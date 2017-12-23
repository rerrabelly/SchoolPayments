<%@ Page Language="C#" AutoEventWireup="true" CodeFile="support.aspx.cs" Inherits="support" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="CSS2.css"/>
    <script type="text/javascript">
function loadDoc() {
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = contact;
  xhttp.open("GET", "ajax.xml", true);
  xhttp.send();
}
function contact() {
    if (xhr.readyState == 4) {
        var xmlDoc = xml.responseXML;
        var x = xmlDoc.getElementsByTagName("info");
        var tpn = x[0].getAttribute("toll_free_phone")
        var dp = x[0].getAttribute("direct_phone");
        var dp = x[0].getAttribute("fax");
        var dp = x[0].getAttribute("email");
        var dp = x[0].getAttribute("city");
        var dp = x[0].getAttribute("state");
        var dp = x[0].getAttribute("zip");
        var dp = x[0].getAttribute("address_line1");
        var dp = x[0].getAttribute("address_line2");

        var tbl = "<table width=100%>";

        tbl += "<tr>";
        tbl += "<td>Toll Free Number</td>";
        tbl += "<td>" + tpn + "</td>";
        tb1 += "</tr>";
        tbl += "</table>";
        document.getElementById("populatecontent").innerHTML = tbl;
    }
}
</script>
</head>
<body onload="loadDoc()">
    <!-- JAVASCRIPT -->


    <!--- JAVASCRIPT END -->
    <!-- HTML -->

    <form id="form1" runat="server">
        <h1>AJAX Page</h1>

    </form>
</body>
</html>
