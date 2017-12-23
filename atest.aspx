<%@ Page Language="C#" AutoEventWireup="true" CodeFile="atest.aspx.cs" Inherits="atest" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="CSS2.css"/>
</head>
<body onload="loadDoc()">
<header>
    <img src="gws.png" width="100%" height="80px"/>
</header>
<div class="ajax">
<table id="demo"></table>

<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      myFunction(this);
    }
  };
  xhttp.open("GET", "ajax.xml", true);
  xhttp.send();
}
function myFunction(xml) {
  var i;
  var xmlDoc = xml.responseXML;
  var x = xmlDoc.getElementsByTagName("info");
  var tpn = x[0].getAttribute("toll_free_phone")
  var dp = x[0].getAttribute("direct_phone");
  var fax = x[0].getAttribute("fax");
  var email = x[0].getAttribute("email");
  var city = x[0].getAttribute("city");
  var state = x[0].getAttribute("state");
  var zip = x[0].getAttribute("zip");
  var al1 = x[0].getAttribute("address_line1");
  var al2 = x[0].getAttribute("address_line2");
  var table = "<tr>";
  table += "<td> Toll Free Phone Number</td>"
  table += "<td>" + tpn + "</td></tr>"
  table += "<tr><td> Direct Phone Number</td>"
  table += "<td>" + dp + "</td></tr>"
  table += "<tr><td> Fax </td>"
  table += "<td>" + fax + "</td></tr>"
  table += "<tr><td> Email</td>"
  table += "<td>" + email + "</td></tr>"
  table += "<tr><td> Address Line 1</td>"
  table += "<td>" + al1 + "</td></tr>"
  table += "<tr><td> Address Line 2</td>"
  table += "<td>" + al2 + "</td></tr>"
  table += "<tr><td> City </td>"
  table += "<td>" + city + "</td></tr>"
  table += "<tr><td> State </td>"
  table += "<td>" + state + "</td></tr>"
  table += "<tr><td> Zip</td>"
  table += "<td>" + zip + "</td></tr>"
   
  document.getElementById("demo").innerHTML = table;
}
</script>
</div>
<div class="ajbtm">
<button class="ajbtm" onclick="location.href = 'Default.aspx';">Back to Main Page</button>
</div>
</body>
</html>