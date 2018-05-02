<%@ WebHandler Language="C#" Class="Assets" %>

using System;
using System.Web;
using System.Data;

public class Assets : IHttpHandler {
    public void ProcessRequest (HttpContext context) {
        string t = HttpContext.Current.Request.Form["t"];
        switch (t)
        {
            case "1":
                //查询所有数据
                GetAssetsData(context);
                break;
            case "2":
                //添加属性列
                AddAssetProperty(context);
                break;
            case "3":
                //添加属性
                DelAssetProperty(context);
                break;
            case "4":
                //保存数据
                SaveAssetData(context);
                break;
            case "5":
                //查询单个数据
                GetOneAssetData(context);
                break;
            case "6":
                //查询单个数据
                UpdateMap(context);
                break;
        }
    }
    public void GetAssetsData(HttpContext context)
    {
        info getassetsdata = new info();
        string projectid=HttpContext.Current.Request.Form["projectid"];
        string buildingid=HttpContext.Current.Request.Form["buildingid"];
        string floorid=HttpContext.Current.Request.Form["floorid"];
        DataTable dt =getassetsdata.GetAssetsData(projectid,buildingid,floorid);
        string json = f.ToJson(dt);
        json = json.Replace("\"", "\\\"");
        context.Response.Write("{\"status\":\"" + json + "\"}");
        //context.Response.Write(json);

    }

    public void GetOneAssetData(HttpContext context)
    {
        info getoneassetdata = new info();
        string projectid=HttpContext.Current.Request.Form["projectid"];
        string buildingid=HttpContext.Current.Request.Form["buildingid"];
        string floorid=HttpContext.Current.Request.Form["floorid"];
        string Code=HttpContext.Current.Request.Form["Code"];
        DataTable dt =getoneassetdata.GetOneAssetData(projectid,buildingid,floorid,Code);
        string json = f.ToJson(dt);
        json = json.Replace("\"", "\\\"");
        context.Response.Write("{\"status\":\"" + json + "\"}");
        //context.Response.Write(json);

    }
    public void AddAssetProperty(HttpContext context)
    {
        string property = HttpContext.Current.Request.Form["property"];
        info addassetpro = new info();
        addassetpro.AddAssetPro(property);
        context.Response.Write("{\"status\":\"1\"}");
    }
    public void DelAssetProperty(HttpContext context)
    {
        string property = HttpContext.Current.Request.Form["property"];
        info delassetpro = new info();
        delassetpro.DelAssetPro(property);
        context.Response.Write("{\"status\":\"1\"}");
    }
    public void SaveAssetData(HttpContext context)
    {
        string Code = HttpContext.Current.Request.Form["code"];
        string proper = HttpContext.Current.Request.Form["proper"];
        string value = HttpContext.Current.Request.Form["value"];
        string projectid = HttpContext.Current.Request.Form["projectid"];
        string buildingid=HttpContext.Current.Request.Form["buildingid"];
        string floorid=HttpContext.Current.Request.Form["floorid"];
        info saveassetdata = new info();
        saveassetdata.SaveAsset(projectid,buildingid,floorid,Code, proper, value);
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