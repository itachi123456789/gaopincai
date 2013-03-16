﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Lottery.Statistics.D11X5
{
	using Configuration;
	using Data;
    using Data.Biz;
    using Data.D11X5;
	using Data.Biz.Common;
	using Data.Biz.D11X5;
	using Model.D11X5;
	using Utils;

	/// <summary>
	/// 11选5彩种前（组）一，二，三与任五玩法遗漏值统计。
	/// </summary>
	public class SpanStat : Base11X5Stat
	{
		protected override void Stat(string dbName, bool isReset)
		{
			string[] dmNames = DimensionNumberTypeBiz.Instance.GetEnabledDimensions("11X5");
			DwNumberBiz biz = new DwNumberBiz(dbName);
			List<DwNumber> numbers = biz.DataAccessor.SelectWithCondition(string.Empty, "Seq", SortTypeEnum.ASC, null);

			this.Stat(dbName, dmNames, numbers,isReset);
		}

		private void Stat(string dbName, string[] dmNames, List<DwNumber> numbers, bool isReset)
		{
			foreach (string dmName in dmNames)
			{
				string[] numberTypes = DimensionNumberTypeBiz.Instance.GetNumberTypes("11X5", dmName)
					.Where(x => !x[0].Equals('A'))
					.ToArray();
				this.Stat(numbers, dbName, dmName, numberTypes,isReset);
			}

			Console.WriteLine("{0} {1} Finished", dbName, "ALL Span");
		}

		private void Stat(List<DwNumber> numbers, string dbName, string dmName,string[] numberTypes, bool isReset)
		{
			Dictionary<string, Dictionary<string, int>> numberTypeLastSpanDict = new Dictionary<string, Dictionary<string, int>>(100000);
			List<DwSpan> entities = new List<DwSpan>(numbers.Count);

            IDwSpanDAO spanDao = DAOFactory.Create<IDwSpanDAO>(dbName, ConfigHelper.GetDwSpanTableName(dmName));
			if(isReset) spanDao.Truncate();
			long lastP = spanDao.SelectLatestPeroid(string.Empty);
			
			foreach (DwNumber number in numbers)
			{
				Dictionary<string, int> pSpanDict = GetSpanDict(numberTypeLastSpanDict, dmName, numberTypes, number);
				if (number.P > lastP) entities.Add(this.CreateSpan(number, pSpanDict));
			}

			string[] columnNames = numberTypes.Select(x => x + "Spans").Union(new string[] { "P" }).ToArray();
			spanDao.Insert(entities, SqlInsertMethod.SqlBulkCopy, columnNames);

			Console.WriteLine("{0} {1} Finished", dbName, dmName);
		}

		private Dictionary<string, int> GetSpanDict(Dictionary<string, Dictionary<string, int>> numberTypeLastSpanDict,
		                                            string dmName, string[] numberTypes, DwNumber number)
		{
			if (dmName.Equals("Peroid"))
				return this.GetPeroidSpanDict(numberTypeLastSpanDict, numberTypes, number);

			Dictionary<string, int> pSpanDict = new Dictionary<string, int>(numberTypes.Length);
			foreach (string numberType in numberTypes)
			{
				if (!numberTypeLastSpanDict.ContainsKey(numberType))
					numberTypeLastSpanDict.Add(numberType, new Dictionary<string, int>(1000));

				int spans = number.Seq - 1;
				string dmValue = number[numberType].GetDmValue(2, dmName, 5);
				if (numberTypeLastSpanDict[numberType].ContainsKey(dmValue))
				{
					spans = number.Seq - numberTypeLastSpanDict[numberType][dmValue] - 1;
					numberTypeLastSpanDict[numberType][dmValue] = number.Seq;
				}
				else
				{
					numberTypeLastSpanDict[numberType].Add(dmValue, number.Seq);
				}
				pSpanDict.Add(numberType, spans);
			}
			return pSpanDict;
		}

		private Dictionary<string, int> GetPeroidSpanDict(Dictionary<string, Dictionary<string, int>> numberTypeLastSpanDict,
		                                                  string[] numberTypes, DwNumber number)
		{
			Dictionary<string, int> pSpanDict = new Dictionary<string, int>(numberTypes.Length);
			foreach (string numberType in numberTypes)
			{
				if (!numberTypeLastSpanDict.ContainsKey(numberType))
					numberTypeLastSpanDict.Add(numberType, new Dictionary<string, int>(1000));

				int spans = number.Seq - 1;
				string numTypeValue = number[numberType].ToString();
				if (numberTypeLastSpanDict[numberType].ContainsKey(numTypeValue))
				{
					spans = number.Seq - numberTypeLastSpanDict[numberType][numTypeValue] - 1;
					numberTypeLastSpanDict[numberType][numTypeValue] = number.Seq;
				}
				else
				{
					numberTypeLastSpanDict[numberType].Add(numTypeValue, number.Seq);
				}
				pSpanDict.Add(numberType, spans);
			}
			return pSpanDict;
		}
		
		private DwSpan CreateSpan(DwNumber number, Dictionary<string, int> pSpanDict)
		{
			DwSpan span = new DwSpan() { P = number.P };
			foreach (string key in pSpanDict.Keys)
			{
				string propertyName = string.Format("{0}Spans", key);
				span[propertyName] = pSpanDict[key];
			}
			return span;
		}
	}
}
