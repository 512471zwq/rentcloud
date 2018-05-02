<%@ WebHandler Language="C#" Class="getdata" %>

using System;
using System.Web;
using System.Data;

public class getdata : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        //context.Response.ContentType = "text/plain";
        getdatavalue(context);
    }

    public bool IsReusable {
        get {
            return false;
        }
    }
    public void getdatavalue(HttpContext context)
    {
        //httpcontext是类，current是实例化对象，from属性用来获取窗体变量的集合
        string name1 = HttpContext.Current.Request.Form["name1"];
        info getdata = new info();
        DataTable dt = getdata.getzlstatus();
        string stbList = "";

        stbList = "{\"Rows\":[";
        foreach (DataRow dr in dt.Rows)
        {
            stbList = stbList + "{ \"name\":\"" + dr[0] + "\",";
            stbList = stbList + " \"value\":\"" + dr[1] + "\"},";
        }
        //去掉最后的一个逗号
        stbList = stbList.Substring(0, stbList.Length - 1);
        stbList = stbList + "],";
        //用来记录一共返回了几条数据记录
        stbList = stbList + "\"Count\":[{\"total\":" + dt.Rows.Count + "}]";
        stbList = stbList + "}";
        context.Response.Write(stbList);//将数据写回data
    }



}