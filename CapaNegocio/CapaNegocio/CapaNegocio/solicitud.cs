using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CapaNegocio
{
    public class solicitud
    {
        private int id;

        public int _Id
        {
            get { return id; }
            set { id = value; }
        }
        private string cliente;

        public string _Cliente
        {
            get { return cliente; }
            set { cliente = value; }
        }
        private string rut;

        public string _Rut
        {
            get { return rut; }
            set { rut = value; }
        }
        private DateTime fecha_solicitud;

        public DateTime _Fecha_solicitud
        {
            get { return fecha_solicitud; }
            set { fecha_solicitud = value; }
        }
        private int puntaje;

        public int _Puntaje
        {
            get { return puntaje; }
            set { puntaje = value; }
        }
        private string clasificacion;

        public string _Clasificacion
        {
            get { return clasificacion; }
            set { clasificacion = value; }
        }
        private long monto;

        public long _Monto
        {
            get { return monto; }
            set { monto = value; }
        }
        private string tipo_solicitud;

        public string _Tipo_solicitud
        {
            get { return tipo_solicitud; }
            set { tipo_solicitud = value; }
        }
        private string ejecutivo;

        public string _Ejecutivo
        {
            get { return ejecutivo; }
            set { ejecutivo = value; }
        }
        private string observacion;

        public string _Observacion
        {
            get { return observacion; }
            set { observacion = value; }
        }
        private int estado;

        public int _Estado
        {
            get { return estado; }
            set { estado = value; }
        }
        private DateTime fecha_revision;

        public DateTime _Fecha_revision
        {
            get { return fecha_revision; }
            set { fecha_revision = value; }
        }
        //metodo de insertar
        public void insertarSolicitud()
        {
            SqlConnection co = new SqlConnection("Data Source=R580-PC;Initial Catalog=ControlUsuario;Integrated Security=True;Pooling=False");
            string query = "insert into solicitud (cliente,rut,fecha_solicitud,puntaje,clasificacion,monto,tipo_solicitud,ejecutivo,observacion,estado,fecha_revision) values ('" + this._Cliente + "','" + this._Rut + "',GETDATE(),'" + this._Puntaje + "','" + this._Clasificacion + "','" + this._Monto + "','" + this._Tipo_solicitud + "','" + this._Ejecutivo + "','"+this._Observacion+"','pendiente',GETDATE())";
            SqlDataAdapter da = new SqlDataAdapter(query,co);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
    }
}
