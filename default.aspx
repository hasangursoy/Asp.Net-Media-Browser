<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" ValidateRequest="false" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content" content="text/html;charset=utf-8" />
    <title>Directory Listing</title>
    <style>
		body{margin:0;padding:0;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background:url('logo-bg.png') no-repeat left top}
        .clear{clear:both}
        #wrapper{padding: 20px}
        h1{ margin: 0 0 15px 0;font-size:16px;border-bottom:1px solid tomato;padding: 0 0 15px 0}
         a{text-decoration: none}
        .dirs a {
            display: block;
            padding: 20px;
            margin: 0 15px 15px 0;
            float: left;
            background: tomato;
            color: #fff;
			border-radius: 5px
        }
        .videos div {
            margin: 0 2% 20px 0;
            float: left;
            width: 48%;
            position: relative
        }
        .videos a:not(.del) {
            display: block;
            width: 100%
        }
        .videos a.del {
            display: block;
            position: absolute;right: 0;top: 0;
            padding: 10px;background: yellow;
            border-radius: 0 0 0 5px
        }
        .videos a img {
            width: 100%;
            float:left
        }

        @media screen and (max-width: 1024px){
            .videos div {
                margin-right:0;
                width: 100%
            }
        }
    </style>
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $("a.del").click(function(e) {
                return confirm("Are you sure?");
            });
        });
    </script>
</head>
<body>
    <div id="wrapper">
        <h1 id="lCurrent" runat="server">/</h1>
        <div id="lDirs" runat="server" class="dirs">
            <a href="../">UP</a>
        </div>
        <div class="clear"></div>
        <div id="lVideos" runat="server" class="videos"></div>
    </div>
</body>
</html>