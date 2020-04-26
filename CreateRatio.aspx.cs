using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace Corporate_Performance_Analyzer
{
    public partial class CreateRatio : System.Web.UI.Page
    {
        System.Data.OleDb.OleDbConnection conn;
        System.Data.OleDb.OleDbCommand cmd;
        String queryStr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {






            }
        }
        protected void create_ratio(object sender, EventArgs e)
        {

        }
        protected void construct_add(object sender, EventArgs e)
        {
            string selectedCompanyString = DropDownList1.SelectedItem.Text;
            string selectedYearString = DropDownList2.SelectedItem.Text;
            FinancialConstructs.AppendDataBoundItems = true;
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["CPADataConnectionString"].ConnectionString;
            queryStr = "SELECT [Financial Contruct] FROM [BalanceSheet] WHERE [Company]=@selectedCompanyString";
            OleDbConnection con = new OleDbConnection(connString);
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = queryStr;
            cmd.Parameters.AddWithValue("@selectedCompanyString", selectedCompanyString);
            //cmd.Parameters.AddWithValue("@selectedYearString", selectedYearString);

            cmd.Connection = con;

            try
            {
                con.Open();
                FinancialConstructs.DataSource = cmd.ExecuteReader();
                FinancialConstructs.DataTextField = "Financial Contruct";
                FinancialConstructs.DataValueField = "Financial Contruct";
                FinancialConstructs.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
        private void showRatio()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["CPADataConnectionString"].ToString();
            conn = new System.Data.OleDb.OleDbConnection(connString);
            conn.Open();
            queryStr = "";

            cmd = new System.Data.OleDb.OleDbCommand(queryStr, conn);

            cmd.ExecuteReader();

            conn.Close();

        }
    }
}