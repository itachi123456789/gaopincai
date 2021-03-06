using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Lottery.Data
{
    /// <summary>
    /// 业务逻辑基类。
    /// </summary>
    public abstract class CommonBiz<U, T> 
        where U : IBaseSelect<T>
    {
        private U _dataAccessor;

        /// <summary>
        /// 数据访问器对象。
        /// </summary>
        public U DataAccessor
        {
            get { return this._dataAccessor; }
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="dataAccessor">数据访问器对象</param>
        protected CommonBiz(U dataAccessor)
        {
            this._dataAccessor = dataAccessor;
        }

        /// <summary>
        /// 从数据库中获取所有的实体对象集合(返回值不需判断是否为null)。
        /// </summary>
        /// <param name="columnNames">该实体对象中对应的数据库表的列名</param>
        /// <returns>实体对象集合</returns>
        public virtual List<T> GetAll(params string[] columnNames)
        {
            return this.DataAccessor.Select(columnNames);
        }
    }
}

