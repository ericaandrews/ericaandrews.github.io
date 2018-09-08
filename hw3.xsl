<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h1>List of Clients</h1>
  <table border="2">
    <tr bgcolor="red"><th>Name</th><th>Phone</th><th>Email</th><th>Account Total</th></tr>
    <xsl:for-each select="Accounts/Client/Name">
      <tr>
        <td><xsl:value-of select="First"/></td>
        <td><xsl:value-of select="Last"/></td>
      </tr>
    </xsl:for-each>
    <xsl:for-each select="Accounts/Client">
      <tr>
        <td><xsl:value-of select="Phone"/></td>
      </tr>
    </xsl:for-each>
    <xsl:for-each select="Accounts/Client">
      <tr>
        <td><xsl:value-of select="E-mail"/></td>
      </tr>
    </xsl:for-each>
      
    <xsl:for-each select="Accounts/Client">       
      <tr style="text-align:right">  
        <td><xsl:value-of select="Account_Total"/></td>
        <xsl:choose>
            <xsl:when test="(Account_Total &lt;= * 80000)">
                <td style="color:red;font-weight:bold;">
                    <xsl:value-of select="Account_Total"/>
                </td>
            </xsl:when>
            <xsl:otherwise>
                <td><xsl:value-of select="Account_Total"/></td>
            </xsl:otherwise>
        </xsl:choose>
        </tr> 
    </xsl:for-each>
      
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
