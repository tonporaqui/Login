using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CapaNegocio
{
    public class usuario
    {
        private int id;

        public int _Id
        {
            get { return id; }
            set { id = value; }
        }
        private string nombre;

        public string _Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string clave;

        public string _Clave
        {
            get { return clave; }
            set { clave = value; }
        }
        private int rol;

        public int _Rol
        {
            get { return rol; }
            set { rol = value; }
        }

        public void ingresaUsuario()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ControlUsuario;Integrated Security=True;Pooling=False");
            string query = "insert into usuario (nombre_user,clave,rol) values ('"+ this._Nombre +"','"+ this._Clave +"',0)";
            SqlDataAdapter da = new SqlDataAdapter(query,co);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
        public Boolean verUsuario()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ControlUsuario;Integrated Security=True;Pooling=False");
            string query = "select * from usuario where nombre_user = '"+ _Nombre +"' and clave = '"+ _Clave +"'";
            SqlDataAdapter da = new SqlDataAdapter(query,co);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}
