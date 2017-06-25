using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace Consolidated
{
    public class globalconfig
    {
    }
    public class connDB
    {
        public static String connstring = "SERVER=localhost;DATABASE=testdb;port=3306;USERNAME=root;PASSWORD=root;";
    }
}