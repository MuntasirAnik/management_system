using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Stock.Model;

namespace Stock.Repository
{
    class StockViewRepository
    {
        public DataTable LoadCategory()
        {
            SqlConnection sqlConnection = new SqlConnection(Connection.ConnectionString);


            string commandString = @"SELECT ID,Name FROM Categories";
            SqlCommand sqlCommand = new SqlCommand(commandString, sqlConnection);

            sqlConnection.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            sqlConnection.Close();
            return dataTable;
        }
        public DataTable LaodProduct(string id)
        {
            SqlConnection sqlConnection = new SqlConnection(Connection.ConnectionString);


            string commandString = @"SELECT ID,Name FROM Products where CategoryID = '"+id+"'";
            SqlCommand sqlCommand = new SqlCommand(commandString, sqlConnection);

            sqlConnection.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            sqlConnection.Close();
            return dataTable;
        }
        public DataTable ShowStockByDate()
        {
            SqlConnection sqlConnection = new SqlConnection(Connection.ConnectionString);

            string commandString = @"select * from StockViewsff where Date Between ";
            SqlCommand sqlCommand = new SqlCommand(commandString, sqlConnection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            sqlConnection.Close();
            return dataTable;

        }
        public DataTable ShowStock(Product product,string startDate,string endDate)
        {
            SqlConnection sqlConnection = new SqlConnection(Connection.ConnectionString);

            string commandString = @"select * from StockViewsfff where Name= '"+product.Name+"' and Date between '"+startDate+"'and '"+endDate+"'";
            SqlCommand sqlCommand = new SqlCommand(commandString, sqlConnection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            sqlConnection.Close();
            return dataTable;

        }
        public bool IsFound(Product product)
        {
            bool found = false;
            SqlConnection sqlConnection = new SqlConnection(Connection.ConnectionString);

            string commandString = @"select * from StockViewsfff where Name= '" + product.Name + "'";
            SqlCommand sqlCommand = new SqlCommand(commandString, sqlConnection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            if (dataTable.Rows.Count < 1)
            {
                found = true;
            }
            sqlConnection.Close();
            return found;
        }
    }
}
