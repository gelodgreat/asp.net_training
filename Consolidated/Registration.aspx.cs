using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Consolidated
{
    public partial class Registration : System.Web.UI.Page
    {
        Login log = new Login();
        String connstring = connDB.connstring;
        MySqlConnection conn = new MySqlConnection();
        MySqlCommand comm = new MySqlCommand();
        MySqlDataReader reader = default(MySqlDataReader);
        String query;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reg_btn_reg_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                conn = new MySqlConnection();
                conn.ConnectionString = connstring;

                conn.Open();
                query = "SELECT username FROM accounts WHERE username=@a";
                comm = new MySqlCommand(query, conn);
                comm.Parameters.AddWithValue("a", reg_tb_username.Text);
                reader = comm.ExecuteReader();
                int count = 0;
                while (reader.Read())
                {
                    count += 1;
                }
                conn.Close();
                if (count >= 1)
                {
                    ShowMessage("Username is already taken.");
                }
                else
                {
                    conn.Open();
                    query = "INSERT INTO accounts VALUES(@a,@b,@c,@d,@e)";
                    comm = new MySqlCommand(query, conn);
                    comm.Parameters.AddWithValue("a", reg_tb_username.Text);
                    comm.Parameters.AddWithValue("b", reg_tb_password.Text);
                    comm.Parameters.AddWithValue("c", reg_tb_fname.Text);
                    comm.Parameters.AddWithValue("d", reg_tb_lname.Text);
                    comm.Parameters.AddWithValue("e", reg_tb_address.Text);
                    reader = comm.ExecuteReader();
                    ShowMessage("Record Inserted Successfully");
                    clearFieldsifDone();
                    conn.Close();
                }
            }
        }
        public void clearFieldsifDone()
        {
            reg_tb_fname.Text = string.Empty;
            reg_tb_lname.Text = string.Empty;
            reg_tb_address.Text = string.Empty;
            reg_tb_username.Text = string.Empty;
            reg_tb_password.Text = string.Empty;
            reg_tb_repass.Text = string.Empty;
        }

        public void ShowMessage(String msg)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + msg + "')", true);
        }
    }
}