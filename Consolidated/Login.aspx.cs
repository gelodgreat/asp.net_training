using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Consolidated
{
    public partial class Login : System.Web.UI.Page
    {
        connDB cdb = new connDB();
        String connstring = connDB.connstring;
        


        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(connstring);
            MySqlCommand comm = new MySqlCommand();
            MySqlDataReader reader = default(MySqlDataReader);

            if (IsPostBack)
            {
                try
                {
                    String query = "SELECT COUNT(*) FROM accounts WHERE username=@a";
                    comm = new MySqlCommand(query, conn);
                    reader = comm.ExecuteReader();
                    int count = 0;
                    while (reader.Read())
                    {
                        count += 1;

                    }

                    if (count >= 1)
                    {
                        ShowMessage("Username is already taken!");
                    }
                    conn.Close();
                }
                catch (Exception ex)
                {
                    ShowMessage(ex.ToString());
                }
                finally
                {
                    conn.Dispose();
                }


            }

        }

      

        protected void log_btn_login_Click(object sender, EventArgs e)
        {
            Server.Transfer("Main.aspx");
        }

        protected void log_btn_reg_Click(object sender, EventArgs e)
        {
            Server.Transfer("Registration.aspx");
        }
        public void ShowMessage(String msg)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + msg + "')", true);
        }
    }
}