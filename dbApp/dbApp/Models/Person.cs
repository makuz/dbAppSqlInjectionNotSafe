using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dbApp
{
    public class Person
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string Lastame { get; set; }
        public string Adres { get; set; }
        public int Wiek { get; set; }



        public Person() { }

        public Person(string name, string lastname, string adres, int wiek)
        {
            this.Name = name;
            this.Lastame = lastname;
            this.Adres = adres;
            this.Wiek = wiek;
        }

        public override string ToString()
        {
            base.ToString();
            return "name: " + Name + ", lastname: " + Lastame +
                ", Adres: " + Adres + ", Wiek: " + Wiek;
        }
    }
}