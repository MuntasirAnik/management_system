using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;
using Stock.Repository;
using Stock.Model;

namespace Stock.BLL
{
    class StockView
    {
        StockViewRepository _stockViewRepository = new StockViewRepository();


        public DataTable LoadCategory()
        {
            return _stockViewRepository.LoadCategory();

        }
        public DataTable LoadProduct(string id)
        {
            return _stockViewRepository.LaodProduct(id);
        }
        /*public DataTable ShowStockByDate(Product product)
        {
            return _stockViewRepository.ShowStock(product);
        }*/
        public DataTable ShowStock(Product product, string startDate, string enddate)
        {
            return _stockViewRepository.ShowStock(product, startDate, enddate);
        }
        public bool Found(Product product)
        {
            return _stockViewRepository.IsFound(product);
        }
        
    }
}
