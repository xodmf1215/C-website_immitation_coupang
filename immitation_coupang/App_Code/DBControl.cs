using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

/// <summary>
/// DBControl을 DBControl_OneRecord, DBControl_NonRecord가 상속
/// </summary>
/// 

public class OleDbSqlServerConnectionString
{
    protected OleDbConnection cn;
    protected OleDbCommand cmd;
    protected string[] rd_Data;
    public Boolean ResultExist;

    public OleDbSqlServerConnectionString(string _Sql, int _FieldCnt)//인수 갯수에 따라 오버로딩
    {
        rd_Data = new string[_FieldCnt];
        string DBS = @"Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=COUPANGDB_B;Data Source=COMSEC07\SQLEXPRESS";

        cn = new OleDbConnection(DBS);
        cmd = new OleDbCommand(_Sql, cn);
    }

    public OleDbSqlServerConnectionString(string _Sql)
    {
        //rd_Data = new string[50];
        string DBS = @"Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=COUPANGDB_B;Data Source=COMSEC07\SQLEXPRESS";

        cn = new OleDbConnection(DBS);
        cmd = new OleDbCommand(_Sql, cn);
    }
}


public class OleDbSqlServerQueryReader : OleDbSqlServerConnectionString
{
    public OleDbDataReader rd;

    public OleDbSqlServerQueryReader(string _Sql, int _FieldCnt)
        : base(_Sql, _FieldCnt)//부모 클래스한테 전달
    {
        ResultExist = false;
    }

    public string[] RunQueryCol()
    {
        int i = 0;

        cn.Open();
        rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            ResultExist = true;
            while (i < rd.FieldCount)
            {
                rd_Data[i] = rd[i].ToString();
                i++;
            }
        }

        rd.Close();
        cn.Close();
        return rd_Data;
    }

    public string[] RunQueryRow()
    {
        int i = 0;

        cn.Open();
        OleDbDataReader rd = cmd.ExecuteReader();

        while (rd.Read())
        {
            ResultExist = true;
            rd_Data[i++] = rd[0].ToString();
        }

        rd.Close();
        cn.Close();
        return rd_Data;
    }
}


public class OleDbSqlServerQueryRun : OleDbSqlServerConnectionString
{
    public int ChangeRecordCount;

    public OleDbSqlServerQueryRun(string _Sql)
        : base(_Sql)
    {
        ChangeRecordCount = 0;
    }

    public int RunNonQuery()
    {
        cn.Open();
        ChangeRecordCount = cmd.ExecuteNonQuery();
        cn.Close();
        return ChangeRecordCount;
    }
}
