using System;
using System.IO;
using System.Linq;

public partial class _default : System.Web.UI.Page
{
    private string _currentPath;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["delete"] != null && Request.QueryString["file"] != null)
        {
            //Delete file
            var file = Server.MapPath("~" + Request.QueryString["file"]);
            if (File.Exists(file))
                File.Delete(file);
            if (File.Exists(file + ".jpg"))
                File.Delete(file + ".jpg");

            if (Request.UrlReferrer != null)
                Response.Redirect(Request.UrlReferrer.ToString());
        }

        if (RouteData.Values["path"] != null)
            _currentPath = Server.MapPath("~/" + RouteData.Values["path"]);
        else
            _currentPath = Server.MapPath("~/");

        lCurrent.InnerText = _currentPath;

        if (Directory.Exists(_currentPath))
        {
            #region List Directories

            var directories = Directory.GetDirectories(_currentPath);

            foreach (var dir in directories)
            {
                var f = new FileInfo(dir);

                lDirs.InnerHtml += "<a href='" + f.Name + "/'>" + f.Name + "</a>";
            }

            #endregion

            #region List Files

            var files = Directory.EnumerateFiles(_currentPath, "*.*", SearchOption.TopDirectoryOnly)
                .Where(s => s.EndsWith(".mp4") || s.EndsWith(".mkv") || s.EndsWith(".flv") || s.EndsWith(".avi") || s.EndsWith(".wmv"));

            foreach (var file in files)
            {
                var f = new FileInfo(file);

                if (File.Exists(_currentPath + f.Name + ".jpg"))
                {
                    lVideos.InnerHtml += "<div><a href='" + f.Name + "'><img src='" + f.Name + ".jpg'/></a>" +
                                         "<a class='del' href='?delete=true&amp;file=/" + RouteData.Values["path"] + f.Name + "'>DELETE</a>" +
                                         "</div>";
                }
                else
                    lVideos.InnerHtml += "<a href='" + f.Name + "'>" + f.Name + "<br/>" + f.LastWriteTime + "</a>";
            }

            #endregion
        }
        else
        {
            lDirs.InnerHtml = "<h3>Directory does not exist!</h3>";
        }
    }
}