using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLayer;

namespace DataTableSample
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
            var dbl = new DBLayer.DBLayer();
            LabelNumBoliger.Text = dbl.GetNumOfBoliger().ToString();
        }
        
        protected void ButtonShowAllBoliger_OnClick(object sender, EventArgs e)
        {
            var dbl = new DBLayer.DBLayer();
            GridViewBoligEiere.DataSource = dbl.GetAllBolig();
            
            GridViewBoligEiere.DataBind();
        }

        protected void ButtonSearchByPhone_OnClick(object sender, EventArgs e)
        {
            var dbl = new DBLayer.DBLayer();
            var searchValue = TextBoxSearchByPhone.Text;

            GridViewByPostnr.DataSource = dbl.GetBoligInfoByPostnr(searchValue);
            GridViewByPostnr.DataBind();
        }
        
    }
}