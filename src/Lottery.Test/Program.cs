﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Lottery.Test
{
    using Model.Common;
    using Data.SQLServer.D11X5;
    using Data.SQLServer.Common;
    using ETL;
    using Utils;
    using Analysis.Formula;
    using Data.Downloader;

    class Program
    {
        static void Main(string[] args)
        {
            //ExtractNumber();
            //StatTest();
            //OmissionValueTest();
            //DownServiceTest();
            //ETLTest();
            //TransactionTest();
            //FormulaTest();
            //Console.WriteLine((1%3).ToString());
            //CacheTest();
            //DownloaderTest();
            //ServiceTest();
            //DisplayPeroidCount();
            Console.WriteLine("Finished");
            Console.Read();
        }

        static void OmissionValueTest()
        {
            //OmissionValueBiz biz = new OmissionValueBiz("jiangx11x5");
            //List<OmissionValue> omissionValues = biz.GetAll("11X5", "F2", "DaXiao",
            //    string.Empty, "CurrentSpans", "DESC");
        }

        static void FormulaTest()
        {
            Console.WriteLine(FFG.GetDC(119, 1.0 / 10.0));
            Console.WriteLine(Deviation.GetColdByDC(0.959, 1.0 / 10.0));
            Console.WriteLine(Deviation.GetWatchColdN(0.959, 0.999, 1.0 / 110.0));
        }

        static void ExtractNumber()
        {
            // DataDownload.DownPage(185);
            //DataDownload.DownPage(167);

            //ExtractData.Extract(185);
            //ExtractData.Extract(167);
            
        }

        static void ExtractNumber(int categoryId)
        {
            DataDownload.DownPage(categoryId);
            ExtractData.Extract(categoryId);
        }

        static void DownServiceTest()
        {
            try
            {
                Services.DownloadService s = new Services.DownloadService();
                //s.StartAsync(DateTime.Now);
                s.StartSync(DateTime.Now);
            }
            catch (Exception ex)
            {
                Logging.Logger.Instance.Write(ex.ToString());
            }
        }

        static void DownloaderTest()
        {
            Category category = CategoryBiz.Instance.GetById(185);
            PinbleDownloader downloader = new PinbleDownloader();
            downloader.Down(new Data.Parameter.DownParameter(category));
        }

        static void ServiceTest()
        {
            Services.CategoryService service = new Services.CategoryService();
            service.Start(DateTime.Now);
        }

        static void CacheTest()
        {
           string[] dims = DimensionNumberTypeBiz.Instance.GetDimensions("SSC");
        }

        static void ETLTest()
        {
            //ETL.D11X5.ImportDmFCAn.Add("db");
            //ETL.SSC.ImportDmFCAn.Add("db");
            //ETL.SSC.ImportDwNumber.Start();
            //ETL.Common.ImportDimension.Import();
            //ETL.Common.ImportNumberType.Import();
            //ETL.Common.ImportNumberTypeDim.Import();
            //ETL.D11X5.ImportDwNumber.UpdateC4();
            //ETL.D11X5.ImportDwNumber.UpdateP(167, "2012090644", "05,07,01,09,10");
            //ETL.SSC.ImportDwNumber.UpdateC45();
            //ETL.SSC.ImportDmDPC.UpdateNumberType();
            //ETL.D12X3.ImportDmDPC.Add("db");
        }

        static void StatTest()
        {
            Statistics.IStatistics[] stats = new Statistics.IStatistics[] 
            {
                new Statistics.D11X5.DmSpan(),
                //new Statistics.SSL.DmSpan(),
                //new Statistics.SSC.DmSpan(),
                //new Statistics.D3.DmSpan()
                //new Statistics.PL35.DmSpan()
                //new Statistics.D12X3.DmSpan()
            };

            foreach (var stat in stats)
            {
                //stat.Stat(Statistics.OutputType.Database, true);
                stat.Stat(Statistics.OutputType.Database, false);
            }
        }

        static void OtherTest()
        {
            Combinations<int> c3 = new Combinations<int>(new int[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }, 3);
            List<string> c3s = c3.Get(",");

        }

        static void TransactionTest()
        {
            TransactionScopeTest.Test();
        }

        static void DisplayPeroidCount()
        {
           var dict= CategoryBiz.Instance.GetEnabledCategoriesPeroidCount();
           foreach (var kp in dict)
           {
               Console.WriteLine("{0}:{1}", kp.Key, kp.Value);
           }
        }
    }
}
