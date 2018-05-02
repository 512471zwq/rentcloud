<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data;
public class Handler : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        string t = HttpContext.Current.Request.Form["t"];//干什么用的
        switch (t)
        {
            case "1":
                //查询所有数据
                GetData(context);
                break;
            case "2":
                //添加属性列
                addproperty(context);
                break;
            case "3":
                //删除属性
                delproperty(context);
                break;
            case "4":
                //保存数据
                savedata(context);
                break;
            case "5":
                //查询单个数据
                GetoneData(context);
                break;
            case "6":
                //查询单个数据
                UpdateMap(context);
                break;
            case "7":
                //显示可统计字段
                ShowCountPro(context);
                break;
            case "8":
                //更新可统计字段
                UpdateCountPro(context);
                break;
            case "9":
                //根据统计字段获取该列数据
                GetCountData(context);
                break;
                
        }
    }
    public void GetData(HttpContext context)
    {
        info getdata = new info();
        string projectid=HttpContext.Current.Request.Form["projectid"];
        DataTable dt =getdata.GetData(projectid);
        string json = f.ToJson(dt);
        json = json.Replace("\"", "\\\"");
        context.Response.Write("{\"status\":\"" + json + "\"}");
        //context.Response.Write(json);

    }
    public void UpdateCountPro(HttpContext context)
    {
        info updatecountpro = new info();
        string projectid=HttpContext.Current.Request.Form["projectid"];
        string pcountpro=HttpContext.Current.Request.Form["pcountpro"];
        updatecountpro.UpdateCountPro(projectid,pcountpro);
        context.Response.Write("{\"status\":\"1\"}");

    }

    public void GetoneData(HttpContext context)
    {
        info getonedata = new info();
        string projectid=HttpContext.Current.Request.Form["projectid"];
        string Code=HttpContext.Current.Request.Form["Code"];
        DataTable dt =getonedata.GetoneData(Code,projectid);
        string json = f.ToJson(dt);
        json = json.Replace("\"", "\\\"");
        context.Response.Write("{\"status\":\"" + json + "\"}");
        //context.Response.Write(json);

    }
    public void addproperty(HttpContext context)
    {
        string property = HttpContext.Current.Request.Form["property"];
        info addpro = new info();
        addpro.AddPro(property);
        context.Response.Write("{\"status\":\"1\"}");
    }
    public void delproperty(HttpContext context)
    {
        string property = HttpContext.Current.Request.Form["property"];
        info delpro = new info();
        delpro.DelPro(property);
        context.Response.Write("{\"status\":\"1\"}");
    }
    public void savedata(HttpContext context)
    {
        string Code = HttpContext.Current.Request.Form["Code"];
        string proper = HttpContext.Current.Request.Form["proper"];
        string value = HttpContext.Current.Request.Form["value"];
        string projectid = HttpContext.Current.Request.Form["projectid"];
        info savedata = new info();
        savedata.Save(Code, proper, value,projectid);
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
    public void ShowCountPro(HttpContext context)
    {
        string projectid = HttpContext.Current.Request.Form["projectid"];
        info showcountpro = new info();
        DataTable dt = showcountpro.ShowCountPro(projectid);
        string json = f.ToJson(dt);
        json = json.Replace("\"", "\\\"");
        context.Response.Write("{\"status\":\"" + json + "\"}");
    }
    public void GetCountData(HttpContext context)
    {
        string projectid = HttpContext.Current.Request.Form["projectid"];
        string pcountpro = HttpContext.Current.Request.Form["pcountpro"];
        info getcountdata = new info();
        DataTable dt =getcountdata.GetCountData(projectid,pcountpro);
        string json = f.ToJson(dt);
        json = json.Replace("\"", "\\\"");
        context.Response.Write("{\"status\":\"" + json + "\"}");
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}