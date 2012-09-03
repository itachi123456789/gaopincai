﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace Lottery.Statistics.D11X5
{
    using Data;
    using Data.SQLServer.Common;
    using Data.SQLServer.D11X5;
    using Model.Common;
    using Model.D11X5;
    using Configuration;

    public abstract class BaseSpan : Base11X5Statistics
    {
        protected virtual void SaveSpanToDB(string dbName, string tableName, DwSpan span)
        {
            DwSpanDAO spanDao = new DwSpanDAO(ConfigHelper.GetDwSpanTableName(tableName), ConfigHelper.GetConnString(dbName));
            spanDao.Insert(span);
        }

        protected virtual void SaveSpanToText(DwSpan span, StreamWriter writer)
        {
            writer.WriteLine(span.ToString());
        }

        protected virtual DwSpan CreateSpan(DwNumber number, Dictionary<string, int> pSpanDict)
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