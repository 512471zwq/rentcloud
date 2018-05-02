using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// info 的摘要说明
/// </summary>
public class info
{
    DataBase data = new DataBase();
    public info()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public DataTable showdata(string name)
    {
        return data.RunProcReturn("Select name,floor,roomname,areasize from fangyuan where name='" + name + "'", "fangyuan").Tables[0];
        //return data.RunProcReturn("Select RoomName,RoomValue from RoomData where RoomName='" + name + "'", "RoomData").Tables[0];
    }
    //获取data值
    public DataTable getzlstatus()
    {
        return data.RunProcReturn("Select name,zlstatus from fangyuan", "fangyuan").Tables[0];
    }
    public DataTable getdatawater()
    {
        return data.RunProcReturn("Select RoomName,RoomWater from RoomData", "RoomData").Tables[0];
    }
    public DataTable getdataelectric()
    {
        return data.RunProcReturn("Select RoomName,RoomElectric from RoomData", "RoomData").Tables[0];
    }

    public int updatedata(string changedname,string changedvalue)
    {
        return data.RunProc("update fangyuan set roomname='" + changedname + "' where RoomName='" + changedname + "'");
    }

    /// <summary>
    /// 查询表的所有信息
    /// </summary>
    /// <returns></returns>
    public DataTable GetData(string projectid)
    {
        //return data.RunProcReturn("select * from buildings","buildings").Tables[0];
        return data.RunProcReturn("use db_RentCloud select * from Building_Info where Projects_Id ='" + projectid + "' order by SortNo", "Building_Info").Tables[0];
    }
    public DataTable GetFloorsData(string projectid,string buildingid)
    {
        //return data.RunProcReturn("select * from buildings","buildings").Tables[0];
        return data.RunProcReturn("use db_RentCloud select * from Building_Floor where Building_Id='" + buildingid + "' and Projects_Id ='" + projectid + "' order by SortNo", "Building_Floor").Tables[0];
    }
    public DataTable GetAssetsData(string projectid, string buildingid,string floorid)
    {
        return data.RunProcReturn("use db_RentCloud select * from Building_Asset where Floor_Id='" + floorid + "' and Building_Id='" + buildingid + "' and Projects_Id ='" + projectid + "' order by SortNo", "Building_Asset").Tables[0];
    }
    /// <summary>
    /// 查询表的所有信息
    /// </summary>
    /// <returns></returns>
    public DataTable GetoneData(string Code,string projectid)
    {
        return data.RunProcReturn("use db_RentCloud select * from Building_Info where Code='" + Code + "' and Projects_Id='"+projectid+"'", "Building_Info").Tables[0];
    }
    public DataTable GetOneAssetData(string projectid, string buildingid, string floorid, string Code)
    {
        return data.RunProcReturn("use db_RentCloud select * from Building_Asset where Floor_Id='" + floorid + "' and Building_Id='" + buildingid + "' and Code='" + Code + "' and Projects_Id='" + projectid + "'", "Building_Asset").Tables[0];
    }

    /// <summary>
    ///添加属性
    /// </summary>
    /// <returns></returns>
    public int AddPro(string property)
    {
        return data.RunProc("use db_RentCloud alter table Building_Info add " + property +" varchar(50)");
    }
    public int AddFloorsPro(string property)
    {
        return data.RunProc("use db_RentCloud alter table Building_Floor add " + property + " varchar(50) ");
    }
    public int AddAssetPro(string property)
    {
        return data.RunProc("use db_RentCloud alter table Building_Asset add " + property + " varchar(50) ");
    }
    /// <summary>
    ///删除属性
    /// </summary>
    /// <returns></returns>
    public int DelPro(string property)
    {
        return data.RunProc("if((select count(*) from dbo.Project_Count where pcountpro='"+ property + "')=1) begin delete from Project_Count where pcountpro = '" + property + "' end alter table Building_Info drop column " + property);
    }
    /// <summary>
    ///删除属性
    /// </summary>
    /// <returns></returns>

    public int DelFloorsPro(string property)
    {
        return data.RunProc("use db_RentCloud alter table Building_Floor drop column " + property);
    }
    public int DelAssetPro(string property)
    {
        return data.RunProc("use db_RentCloud alter table Building_Asset drop column " + property);
    }
    /// <summary>
    ///保存数据
    /// </summary>
    /// <returns></returns>
    public int Save(string Code, string proper, string value,string projectid)
    {
        //下面这个真的很难搞
        //return data.RunProc("declare @sqlstr varchar(50) set @sqlstr='update buildings set "+ proper +"='"+value+"' where  nameid"+"=" +(row)+"' exec(@sqlstr)");
        return data.RunProc("use db_RentCloud update Building_Info set " + proper + "='" + value + "' where  Code" + "=" + Code +" and Projects_Id='"+projectid+"'");
    }
    public int SaveFloor(string projectid,string buildingid,string floorcode, string proper, string value)
    {
        return data.RunProc("use db_RentCloud update Building_Floor set " + proper + "='" + value + "' where Building_Id" + "=" + buildingid + " and FloorCode" + "=" + floorcode + " and Projects_Id='" + projectid + "'");
    }
    public int SaveAsset(string projectid, string buildingid, string floorid, string code,string proper, string value)
    {
        return data.RunProc("use db_RentCloud update Building_Asset set " + proper + "='" + value + "' where Code" + "=" + code + " and Building_Id" + "=" + buildingid + " and Floor_Id" + "=" + floorid + " and Projects_Id=" + projectid + "");
    }
    public DataTable Updatemap(string proper)
    {
        //直接在查询时给字段取别名，这样返回后到前台就不用再修改了
        return data.RunProcReturn("select Code as name, "+proper+ " as value from Building_Info", "Building_Info").Tables[0];
        
    }
    public DataTable Getmaxandmin(string proper)
    {
        return data.RunProcReturn("select max("+proper+"+0),min(" + proper + "+0) from Building_Info ", "Building_Info").Tables[0];
    }
    public DataTable ShowCountPro(string projectid)
    {
        return data.RunProcReturn("select pcountpro from Project_Count where Project_Id='" + projectid + "'", "Project_Count").Tables[0];
    }
    public int UpdateCountPro(string projectid,string pcountpro)
    {
        return data.RunProc("insert into Project_Count(pcountpro,Project_Id) values('"+pcountpro+"','" + projectid + "')");
    }
    public DataTable GetCountData(string projectid,string pcountpro)
    {
        return data.RunProcReturn("select "+ pcountpro + " from Building_Info where Projects_Id='" + projectid + "' order by SortNo", "Building_Info").Tables[0];
    }


}