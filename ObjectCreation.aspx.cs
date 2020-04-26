using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace Corporate_Performance_Analyzer
{
    public partial class ObjectCreation : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source = (LocalDb)\MSSQLLocalDB; Initial Catalog = CPAData; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createObject_Click(object sender, EventArgs e)
        {
            /*
            //Connection for MS Access Database
            string connetionString = ConfigurationManager.ConnectionStrings["CPADataConnectionString"].ConnectionString;

            using (OleDbConnection myCon = new OleDbConnection(connetionString))
            {

                OleDbCommand cmd = new OleDbCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO KnowledgeObject ([KnowledgeObject1],[ObjectType]) values (?,?)";
                cmd.Parameters.AddWithValue("@KnowledgeObject1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@ObjectType", DropDownList1.SelectedValue);

                cmd.Connection = myCon;
                myCon.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Submission successful');</script>");
                myCon.Close();
            }
            */

            //Connection for MS SQL Server Database
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO cpadata.knowledgeobject values ('"+TextBox1.Text+"','"+objType.SelectedItem.Value+"')";
            //+DropDownList1.SelectedValue +
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Submission successful');</script>");
            con.Close();


        }
    }
}