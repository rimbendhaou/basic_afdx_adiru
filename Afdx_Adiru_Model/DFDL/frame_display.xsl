<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                 xmlns:afdx="afdx:1.1" >

  <xsl:template match="/">
    <html>
      <body>
        <center>
        <table border="1">
          <tr bgcolor="#336600">
            <th>
              <h1>
                <font color="white">AFDX FRAME</font>
              </h1>
            </th>
          </tr>
        </table>
        </center>
        <h2>Mac Header</h2>
        <h3>Address Mac destination</h3>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Constant field</th>
            <th>Virtual Link ID</th>
          </tr>
          <xsl:for-each select="afdx:AFDXFrame/afdx:MacHeader/MacDestAddr">
            <tr>
              <td>
                <xsl:value-of select="MacDestAddrCstField"/>
              </td>
              <td>
                <xsl:value-of select="MacDestAddrVirtualLinkId"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
     
        <h3>Address Mac source</h3>
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
        <h2>IP Header</h2>
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

        <h2>IP Payload</h2>
        <h3>UDP Header</h3>
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
        <h2>UDP Payload</h2>
        <h3>ARINC 429 Parameters</h3>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th rowspan="2">Codage</th>
            <th rowspan="2">Nb Bits</th>
            <th colspan="2">Resolution</th>
          </tr>
          <tr bgcolor="#9acd32">
            <th></th>
            <th></th>
          </tr>
          <tr>
            <td>
              <!--xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/codage"/-->
              <xsl:variable name="CodageValue" select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/codage"/>
              <xsl:choose>
                <xsl:when test="$CodageValue = 0">
                  BNR
                </xsl:when>
                <xsl:otherwise>
                  BCD
                </xsl:otherwise>
              </xsl:choose>
            </td>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/NbBits"/>
            </td>
            <td>
              <!--xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/Resolution_sign"/-->
              <xsl:variable name="signValue" select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/Resolution_sign"/>
              <xsl:choose>
                <xsl:when test="$signValue = 0">
                  +
                </xsl:when>
                <xsl:when test="$signValue = 1">
                  -
                </xsl:when>
                <xsl:otherwise>
                  +/-
                </xsl:otherwise>
              </xsl:choose>
            </td>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/ResolutionMajor"/>.<xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/ResolutionMinor"/>
            </td>
          </tr>
        </table>
        <h3>ARINC 429 DATA</h3>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Label</th>
            <th>Bit32</th>
            <th>SSM</th>
            <th>DataField</th>
            <th>SDI</th>
          </tr>

          <tr>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/Label1"/>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/Label2"/>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/Label3"/>
            </td>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/afdx:ARINC429DataBNR/Bit32"/>
            </td>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/afdx:ARINC429DataBNR/SSM"/>
            </td>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/afdx:ARINC429DataBNR/DataField"/>
            </td>
            <td>
              <xsl:value-of select="afdx:AFDXFrame/afdx:EthernetPayload/afdx:IPv4Payload/afdx:UDPPayload/afdx:DataSet/afdx:ARINC429Data/afdx:ARINC429DataBNR/SDI"/>
            </td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>