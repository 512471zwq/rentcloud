<%@ WebHandler Language="C#" Class="fangyuan" %>

using System;
using System.Web;
using System.Data;

public class fangyuan : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        showdata(context);//必须要在这里面调用方法
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
    public void showdata(HttpContext context)
    {
        //httpcontext是类，current是实例化对象，from属性用来获取窗体变量的集合
        string name = HttpContext.Current.Request.Form["name"];
        info getinfo = new info();
        //string department = getinfo.chartClick(name);
        //context.Response.Write(department);//将数据写回data
        DataTable roomdata = getinfo.showdata(name);
        string roomlist = "";
        roomlist = roomlist + "{ \"name\":\"" + roomdata.Rows[0][0] +"\",\"floor\":\"" + roomdata.Rows[0][1] +"\",\"roomname\":\"" + roomdata.Rows[0][2] +"\",\"areasize\":\"" + roomdata.Rows[0][3] +"\"}";
        context.Response.Write(roomlist);//将数据写回data
    }

}