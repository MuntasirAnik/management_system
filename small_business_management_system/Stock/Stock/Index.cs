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

namespace Stock
{
    public partial class Index : Form
    {
        Thread thread;
        public Index()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new CategoryCatalogueUi().Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            new ProductCatalogueUi().Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            new CustomerPartyUi().Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            new SupplierPartyUi().Show();
        }

        private void stockButton_Click(object sender, EventArgs e)
        {
            this.Close();
            thread = new Thread(OpenFormStockOrder);
            thread.SetApartmentState(ApartmentState.STA);
            thread.Start();
        }
        private void OpenFormStockOrder()
        {
            StockViewUi stockViewUi = new StockViewUi();
            Application.Run(stockViewUi);
        }
    }
}
