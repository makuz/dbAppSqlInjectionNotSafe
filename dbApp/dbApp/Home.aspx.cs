using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace dbApp
{
    public partial class Home : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-C77TM1D;Initial Catalog=myDb;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Persons", con);
            SqlDataReader rdr = cmd.ExecuteReader();

            GridViewPersonTable.DataSource = rdr;
            GridViewPersonTable.DataBind();

            con.Close();

        }

        protected void AddButton_click(object sender, EventArgs e)
        {

            String name = Name.Text;
            String lastname = Lastname.Text;
            String adres = Adres.Text;
            int wiek = Int32.Parse(Age.Text);

            Person person = new Person(name, lastname, adres, wiek);


            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Persons (name, lastname, adres, wiek) values (" +
                "'" + name + "'," +
                "'" + lastname + "'," +
                "'" + adres + "'," +
                "'" + wiek + "')"
                , con);

            cmd.ExecuteNonQuery();

            con.Close();

            ShowEventData.Text = "zapisano osobe: " + person.ToString();

        }


        protected void RemoveButton_click(object sender, EventArgs e)
        {

            int Id = Int32.Parse(IdTextBox.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Persons where Id =" + Id, con);

            cmd.ExecuteNonQuery();

            con.Close();

            ShowEventData.Text = "osoba o id: " + Id + "zostala usunieta";
        }
    }
}