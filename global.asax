<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">
    void RegisterRoutes(RouteCollection routes)
    {
        //JPG
        routes.Ignore("{file}.jpg");
        routes.Ignore("{dir1}/{file}.jpg");
        routes.Ignore("{dir1}/{dir2}/{file}.jpg");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{file}.jpg");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{file}.jpg");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{dir5}/{file}.jpg");
        
        //MP4
        routes.Ignore("{file}.mp4");
        routes.Ignore("{dir1}/{file}.mp4");
        routes.Ignore("{dir1}/{dir2}/{file}.mp4");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{file}.mp4");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{file}.mp4");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{dir5}/{file}.mp4");
        
        //MKV
        routes.Ignore("{file}.mkv");
        routes.Ignore("{dir1}/{file}.mkv");
        routes.Ignore("{dir1}/{dir2}/{file}.mkv");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{file}.mkv");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{file}.mkv");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{dir5}/{file}.mkv");
        
        //AVI
        routes.Ignore("{file}.avi");
        routes.Ignore("{dir1}/{file}.avi");
        routes.Ignore("{dir1}/{dir2}/{file}.avi");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{file}.avi");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{file}.avi");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{dir5}/{file}.avi");
        
        //WMV
        routes.Ignore("{file}.wmv");
        routes.Ignore("{dir1}/{file}.wmv");
        routes.Ignore("{dir1}/{dir2}/{file}.wmv");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{file}.wmv");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{file}.wmv");
        routes.Ignore("{dir1}/{dir2}/{dir3}/{dir4}/{dir5}/{file}.wmv");
        
        routes.RouteExistingFiles = true;

        routes.MapPageRoute("all", "{*path}", "~/default.aspx");
    }
    void Application_Start(object sender, EventArgs e)
    {
        RegisterRoutes(RouteTable.Routes);
    }
</script>