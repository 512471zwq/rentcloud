<%@ WebHandler Language="C#" Class="Floors" %>

using System;
using System.Web;
using System.Data;

public class Floors : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        string t = HttpContext.Current.Request.Form["t"];
        switch (t)
        {
            case "1":
                //查询楼层数据
                GetFloorsData(context);
                break;
            case "2":
                //添加属性列
                AddFloorsProperty(context);
                break;
            case "3":
                //删除楼层属性
                DelFloorsProperty(context);
                break;
            case "4":
                //保存楼层数据
                SaveFloorsData(context);
                break;
            case "6":
                //查询单个数据
                UpdateMap(context);
                break;
        }
    }

    public void GetFloorsData(HttpContext context)
    {
        string projectid=HttpContext.Current.Request.Form["projectid"];
        string buildingid=HttpContext.Current.Request.Form["buildingid"];
        info getfloorsdata = new info();
        DataTable dt =getfloorsdata.GetFloorsData(projectid,buildingid);
        string json = f.ToJson(dt);
        json = json.Replace("\"", "\\\"");
        context.Response.Write("{\"status\":\"" + json + "\"}");

    }
    
    public void AddFloorsProperty(HttpContext context)
    {
        string property = HttpContext.Current.Request.Form["property"];
        info addfloorspro = new info();
        addfloorspro.AddFloorsPro(property);
        context.Response.Write("{\"status\":\"1\"}");
    }
    public void DelFloorsProperty(HttpContext context)
    {
        string property = HttpContext.Current.Request.Form["property"];
        info delfloorspro = new info();
        delfloorspro.DelFloorsPro(property);
        context.Response.Write("{\"status\":\"1\"}");
    }
    public void SaveFloorsData(HttpContext context)
    {
        string projectid = HttpContext.Current.Request.Form["projectid"];
        string buildingid=HttpContext.Current.Request.Form["buildingid"];
        string floorcode = HttpContext.Current.Request.Form["floorcode"];
        string proper = HttpContext.Current.Request.Form["proper"];
        string value = HttpContext.Current.Request.Form["value"];
        info savefloordata = new info();
        savefloordata.SaveFloor(projectid,buildingid,floorcode, proper, value);
        context.Response.Write("{\"status\":\"1\"}");
    }
    public void UpdateMap(HttpContext context)
    {
        string proper = HttpContext.Current.Request.Form["pro"];
        info updatemap = new info();
        DataTable dt=updatemap.Updatemap(proper);
        string json = f.ToJson(dt);
        json = json.Replace("\"", "\\\"");
        DataTable dt0 = updatemap.Getmaxandmin(proper);
        string max = Convert.ToString(dt0.Rows[0][0]);
        string min = Convert.ToString(dt0.Rows[0][1]);
        context.Response.Write("{\"status\":\"" + json + "\",\"max\":\""+max+"\",\"min\":\""+min+"\"}");
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}