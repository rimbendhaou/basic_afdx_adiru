<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                 xmlns:afdx="afdx:1.1" >

  <xsl:template match="/">
    <html>
      <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
          <!--link href='http://fonts.googleapis.com/css?family=Kavoon' rel='stylesheet' type='text/css'/-->
          <style type="text/css">

            html, body {

            height: 100%;
            }


            body {

            margin: 0px;

            padding: 0px;

            background: #ededed;

            font-family: 'Arial', sans-serif;

            font-size: 13px;
            }


            h1, h2, h3 {
            margin: 0;
            padding: 0;
            }


            /** CONTAINER */

            .container
            width: 1100px;
            margin: 0px auto;
            }


            .clearfix{
            clear: both;
            }

            /** HEADER */


            #header-wrapper

            {

            overflow: hidden;

            background: #3b3b3b;

            }


            #header

            {

            overflow: hidden;

            height: 150px;

            }


            /** LOGO */


            #logo

            {

            float: left;

            width: 400;

            }


            #logo h1 a

            {

            display: block;

            line-height: 150px;

            text-decoration: none;

            font-family: 'Kavoon', cursive;

            font-size: 40px;

            color: #FFFFFF;

            }


            /** MENU */


            #menu

            {

            float: right;

            width: 700px;

            }


            #menu ul

            {

            float: left;

            margin: 0px;

            padding: 60px 0px 0px 0px;

            list-style: none;

            line-height: normal;

            }


            #menu li

            {

            float: left;

            margin-left: 10px;

            }


            #menu a

            {

            display: block;

            padding: 10px 20px;

            letter-spacing: 2px;

            text-decoration: none;

            text-transform: uppercase;

            font-family: 'Archivo Narrow', sans-serif;

            font-size: 12px;

            font-weight: 600;

            color: #FFFFFF;

            }


            #menu .active a

            {

            background: #00d9a9;

            border-radius: 5px;

            color: #FFFFFF;

            }


            #menu .active a:hover

            {

            background-color: #00a987;

            }



            #menu .active a:active

            {

            background-color: #20e1b6;

            }



            #menu a:hover

            {

            text-decoration: none;

            }




            /** TABLE */

            table {
            background: #f5f5f5;
            border-collapse: separate;
            box-shadow: inset 0 1px 0 #fff;
            font-size: 12px;
            line-height: 24px;
            margin-top: 30px auto;
            margin-bottom: 30px auto;
            text-align: left;
            width: 90%;
            }

            th {
            background: url(https://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
            border-left: 1px solid #555;
            border-right: 1px solid #777;
            border-top: 1px solid #555;
            border-bottom: 1px solid #333;
            box-shadow: inset 0 1px 0 #999;
            color: #fff;
            font-weight: bold;
            padding: 10px 15px;
            position: relative;
            text-shadow: 0 1px 0 #000;
            }

            th:after {
            background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
            content: '';
            display: block;
            height: 25%;
            left: 0;
            margin: 1px 0 0 0;
            position: absolute;
            top: 25%;
            width: 100%;
            }

            th:first-child {
            border-left: 1px solid #777;
            box-shadow: inset 1px 1px 0 #999;
            }

            th:last-child {
            box-shadow: inset -1px 1px 0 #999;
            }

            td {
            border-right: 1px solid #fff;
            border-left: 1px solid #e8e8e8;
            border-top: 1px solid #fff;
            border-bottom: 1px solid #e8e8e8;
            padding: 10px 15px;
            position: relative;
            transition: all 300ms;
            }

            td:first-child {
            box-shadow: inset 1px 0 0 #fff;
            }

            td:last-child {
            border-right: 1px solid #e8e8e8;
            box-shadow: inset -1px 0 0 #fff;
            }

            tr {
            background: url(https://jackrugile.com/images/misc/noise-diagonal.png);
            }

            tr:nth-child(odd) td {
            background: #f1f1f1 url(https://jackrugile.com/images/misc/noise-diagonal.png);
            }

            tr:last-of-type td {
            box-shadow: inset 0 -1px 0 #fff;
            }

            tr:last-of-type td:first-child {
            box-shadow: inset 1px -1px 0 #fff;
            }

            tr:last-of-type td:last-child {
            box-shadow: inset -1px -1px 0 #fff;
            }

            tbody:hover td {
            color: transparent;
            text-shadow: 0 0 3px #aaa;
            }

            tbody:hover tr:hover td {
            color: #444;
            text-shadow: 0 1px 0 #fff;
            }

            .Show
            {
            display:block;
            }
            .hide
            {
            display:none;
            }

            .hand{cursor:Pointer;}
            .bodyMargin{ margin-left: 100px;}
            .headingdiv{margin-bottom:20px;margin-top: 20px;}

          </style>
          <!--link rel="stylesheet" type="text/css" href="css.css" /-->

        <script>
          function ShowDiv(Id){
          $("li").removeClass("active")
          if(Id === 'dvMacHeader')
          {
          $("#liMacHeader").addClass("active")
          $("#dvMacHeader").removeClass("hide");
          $("#dvMacHeader").addClass("Show active");
          $("#dvIPHeader").addClass("hide");
          $("#dvIPHeader").removeClass("Show");
          $("#dvIPPayLoad").removeClass("Show");
          $("#dvIPPayLoad").addClass("hide");
          $("#dvUDPPayLoad").removeClass("Show");
          $("#dvUDPPayLoad").addClass("hide");
          }
          else if(Id === 'dvIPHeader')
          {
          $("#liIPHeader").addClass("active")
          $("#dvIPHeader").removeClass("hide");
          $("#dvIPHeader").addClass("Show");
          $("#dvMacHeader").removeClass("Show");
          $("#dvMacHeader").addClass("hide");
          $("#dvIPPayLoad").removeClass("Show");
          $("#dvIPPayLoad").addClass("hide");
          $("#dvUDPPayLoad").removeClass("Show");
          $("#dvUDPPayLoad").addClass("hide");
          }
          else if(Id === 'dvIPPayLoad')
          {
          $("#liIPPayLoad").addClass("active")
          $("#dvIPHeader").removeClass("Show");
          $("#dvIPHeader").addClass("hide");
          $("#dvMacHeader").removeClass("Show");
          $("#dvMacHeader").addClass("hide");
          $("#dvIPPayLoad").removeClass("hide");
          $("#dvIPPayLoad").addClass("Show");
          $("#dvUDPPayLoad").removeClass("Show");
          $("#dvUDPPayLoad").addClass("hide");
          }
          else if(Id === 'dvUDPPayLoad')
          {
          $("#liUDPPayLoad").addClass("active")
          $("#dvIPHeader").removeClass("Show");
          $("#dvIPHeader").addClass("hide");
          $("#dvMacHeader").removeClass("Show");
          $("#dvMacHeader").addClass("hide");
          $("#dvIPPayLoad").removeClass("Show");
          $("#dvIPPayLoad").addClass("hide");
          $("#dvUDPPayLoad").removeClass("hide");
          $("#dvUDPPayLoad").addClass("Show");
          }
          }
        </script>
        </head>

      <body>

        <div id="header-wrapper">

          <div id="header" class="container">

            <div id="logo" style="Padding-left:20px">

              <h1>
                <a href="#">AFDX FRAME</a>
              </h1>

            </div>

            <div id="menu">

              <ul>

                <li id="liMacHeader" class="active hand">
                  <a onClick="ShowDiv('dvMacHeader')">MAC Header</a>
                </li>

                <li id="liIPHeader" class="hand">
                  <a onClick="ShowDiv('dvIPHeader')">IP Header</a>
                </li>

                <li id="liIPPayLoad" class="hand">
                  <a onClick="ShowDiv('dvIPPayLoad')">IP Payload</a>
                </li>

                <li id="liUDPPayLoad" class="hand">
                  <a onClick="ShowDiv('dvUDPPayLoad')">UDP Payload</a>
                </li>

              </ul>

            </div>

          </div>

        </div>
        <div id="dvBody" Class="bodyMargin">
        <div id="dvMacHeader" Class="Show">
          <div Class="headingdiv">
            <h2>Mac Header</h2>
            <h3>Address Mac destination</h3>
          </div>
        <table border="1">
          <!--border="1"-->
          <tr bgcolor="#9acd32">
            <!--bgcolor="#9acd32"-->
            <th >Constant field</th>
            <th >Virtual Link ID</th>
          </tr>
          <tr>
          <xsl:for-each select="afdx:AFDXFrame/afdx:MacHeader/MacDestAddr">
            <tr >
              <td >
                <xsl:value-of select="MacDestAddrCstField"/>
              </td>
              <td >
                <xsl:value-of select="MacDestAddrVirtualLinkId"/>
              </td>
            </tr>
          </xsl:for-each>
          </tr>
        </table>

          <div Class="headingdiv">
          <h3>Address Mac source</h3>
          </div>
          <table border="1">
            <tr bgcolor="#9acd32">
              <th rowspan="2">Constant field</th>
              <th colspan="2">Network ID</th>
              <th colspan="2">Equipment ID</th>
              <th rowspan="2">Interface ID</th>
              <th rowspan="2">Ending Constant field</th>
            </tr>
            <tr bgcolor="#9acd32">
              <th>Constant Field</th>
              <th>Domain ID</th>
              <th>Side ID</th>
              <th>Location ID</th>
            </tr>
            <xsl:for-each select="afdx:AFDXFrame/afdx:MacHeader/MacSrcAddrGrp">
              <tr>
                <td>
                  <xsl:value-of select="MacSrcAddrCstField"/>
                </td>
                <td>
                  <xsl:value-of select="MacSrcNetworkId/NetIdCstField"/>
                </td>
                <td>
                  <xsl:value-of select="MacSrcNetworkId/NetIdDomainId"/>
                </td>

                <td>
                  <xsl:value-of select="MacSrcEquipmentId/SideId"/>
                </td>
                <td>
                  <xsl:value-of select="MacSrcEquipmentId/LocationId"/>
                </td>
                <td>
                  <xsl:value-of select="MacSrcInterfaceId"/>
                </td>
                <td>
                  <xsl:value-of select="MacSrcEndingCstField"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
          <h3>Ethernet Type</h3>
          <xsl:value-of select="afdx:AFDXFrame/afdx:MacHeader/EthernetType"/>
        </div>
        <div id="dvIPHeader" Class="hide">
          <div Class="headingdiv">
            
            
          </div>
        
          <div Class="headingdiv">
            <h2>IP Header</h2>
          </div>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Version</th>
            <th>IHL</th>
            <th>TypeOfService</th>
            <th>Length</th>
            <th>Identification</th>
            <th>Flags</th>
            <th>FragmentOffset</th>
            <th>TTL</th>
            <th>Protocol</th>
            <th>Checksum</th>
            <th>IP Source</th>
            <th>IP Destination</th>
          </tr>
          <xsl:for-each select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Header">
            <tr>
              <td>
                <xsl:value-of select="Version"/>
              </td>
              <td>
                <xsl:value-of select="IHL"/>
              </td>
              <td>
                <xsl:value-of select="TypeOfService"/>
              </td>
              <td>
                <xsl:value-of select="Length"/>
              </td>
              <td>
                <xsl:value-of select="Identification"/>
              </td>
              <td>
                <xsl:value-of select="Flags"/>
              </td>
              <td>
                <xsl:value-of select="FragmentOffset"/>
              </td>
              <td>
                <xsl:value-of select="TTL"/>
              </td>
              <td>
                <xsl:value-of select="Protocol"/>
              </td>
              <td>
                <xsl:value-of select="Checksum"/>
              </td>
              <td>
                <xsl:value-of select="IPSrc"/>
              </td>
              <td>
                <xsl:value-of select="IPDest"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        </div>
        <div id="dvIPPayLoad" Class="hide">
          <div Class="headingdiv">
            <h2>IP Payload</h2>
            <h3>UDP Header</h3>
          </div>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Source Port</th>
            <th>Destination Port</th>
            <th>UDP Length</th>
            <th>UDP Checksum</th>
          </tr>

          <tr>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPHeader/SrcPort"/>
            </td>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPHeader/DestPort"/>
            </td>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPHeader/UDPLength"/>
            </td>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPHeader/UDPChecksum"/>
            </td>
          </tr>
        </table>
        </div>
        <div id="dvUDPPayLoad" Class="hide">
          <div Class="headingdiv">
            <h2>UDP Payload</h2>   
          </div>
          
          <div Class="headingdiv">
            <h3>ARINC 429 DATA</h3>
          </div>
        <xsl:variable name="sign" select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/sign"/>
          <!--xsl:choose>
          <xsl:when test="$sign"-->
        <table border="1">
              <tr bgcolor="#9acd32">
                <th>Label</th>
                <th>SDI</th>
                <th>DataField</th>
                <th>SSM</th>
                <th>Parity</th>
              </tr>

              <tr>
                <td>
                  <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/Label"/>
                </td>
                <td>
                  <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/sdi"/>
                </td>
                <td>
                  <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/Data_Value"/>
                </td>
                <td>
                  <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/statusMatrix"/>
                </td>
                <td>
                  <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/parity"/>
                </td>
              </tr>
            </table>
          <!--/xsl:when>
          <xsl:otherwise>
            
          </xsl:otherwise>
        </xsl:choose-->
        </div>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>