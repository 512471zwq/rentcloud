<%@ WebHandler Language="C#" Class="changedata" %>

using System;
using System.Web;

public class changedata : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //context.Response.ContentType = "text/plain";
        updatedata(context);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }


        public void updatedata(HttpContext context)
    {
        string changedname = HttpContext.Current.Request.Form["changedroomname"];
        string changedvalue =HttpContext.Current.Request.Form["changedroomareasize"];
        info changedata = new info();
        var num=changedata.updatedata(changedname,changedvalue);
            context.Response.Write(num);

    }

}