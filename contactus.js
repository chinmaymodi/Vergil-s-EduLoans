function loadXMLDoc() {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = readData;
    xmlhttp.open("GET", "content/contactinfor.xml", true);
    xmlhttp.send();
}

function readData(xml) {
    if (xmlhttp.readyState == 4) {
        var xmlDoc = xmlhttp.responseXML;
        var root = xmlDoc.getElementsByTagName("info");
        var info = root[0];
        if (info) {
            table = "<tr>" +
                "<td>Mailing Address</td><td align='center'>" + info.getAttribute("mailing-address") + "</td></tr><tr>" +
                "<td>Toll Free Phone Number</td><td align='center'><a href='tel:" + info.getAttribute("toll-free-phone") + "'>" + info.getAttribute("toll-free-phone") + "</a></td></tr><tr>" +
                "<td>Direct Phone Number</td><td align='center'><a href='tel:" + info.getAttribute("direct-phone") + "'>" + info.getAttribute("direct-phone") + "</a></td></tr><tr>" +
                "<td>Email Address</td><td align='center'><a href='mailto:" + info.getAttribute("email") + "'>" + info.getAttribute("email") + "</a></td></tr><tr>" +
                "<td>Web Site</td><td align='center'><a href='" + info.getAttribute("website") + "'>" + info.getAttribute("website") + "</a></td></tr>";
            document.getElementById("table2").innerHTML = table;
        }
        else {
            document.getElementById("table2").innerHTML = "<tr><td>no</td></tr>";
        }
    }
}