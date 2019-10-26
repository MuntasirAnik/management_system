using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Threading;
using Stock.BLL;
using Stock.Model;

namespace Stock
{
    public partial class StockViewUi : Form
    {
        Thread thread;
        StockView _stockView = new StockView();
        Product product = new Product();

        public StockViewUi()
        {
            InitializeComponent();
        }

        private void leftButton_Click(object sender, EventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void crossButton_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void rightButton_Click(object sender, EventArgs e)
        {
           
            new StockReorderUi().Show();
        }

        private void homebutton_Click(object sender, EventArgs e)
        {
            this.Close();
            thread = new Thread(OpenIndex);
            thread.SetApartmentState(ApartmentState.STA);
            thread.Start();
        }
        private void OpenIndex()
        {
            Index index = new Index();
            Application.Run(index);
        }

        private void searchButton_Click(object sender, EventArgs e)
        {

            
            if(CategoryComboBox2.Text == "-Select-"||ProductComboBox.Text=="-Select-")

            {
                MessageBox.Show("select category and product first");
                return;
                
            }
            product.CategoryName = CategoryComboBox2.Text;
            product.Name = ProductComboBox.Text;

            if (_stockView.Found(product))
            {
                stockDataGridView.DataSource = null;
                MessageBox.Show("Data Not Found");
                return;
            }
            string startDate = startDateTimePicker.Text;
            string endDate = endDateTimePicker.Text;

            

            stockDataGridView.DataSource = _stockView.ShowStock(product,startDate,endDate);
        }

        private void StockViewUi_Load(object sender, EventArgs e)
        {
            CategoryComboBox2.DataSource = _stockView.LoadCategory();
            CategoryComboBox2.Text = "-Select-";
            

        }

        private void ProductComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void CategoryComboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

            ProductComboBox.DataSource = _stockView.LoadProduct(CategoryComboBox2.SelectedValue.ToString());
            ProductComboBox.Text = "-Select-";
        }

        private void stockDataGridView_RowPostPaint(object sender, DataGridViewRowPostPaintEventArgs e)
        {
            stockDataGridView.Rows[e.RowIndex].Cells["SL"].Value = (e.RowIndex + 1).ToString();
        }
    }
}
