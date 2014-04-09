<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>ejer_4</title>
      </head>
      <body>
        <table border="1">
          <tr>
            <th>Title</th>
            <th>Artist</th>
            <th>Year</th>
          </tr>
          <xsl:for-each select="//cd">
            <xsl:choose>
              <xsl:when test="year&lt;1980">
                <tr bgcolor="yellow">
                  <xsl:apply-templates select="." />
                </tr>
              </xsl:when>
              <xsl:when test="year&gt;1989">
                <tr bgcolor="blue">
                  <xsl:apply-templates select="." />
                </tr>
              </xsl:when>
              <xsl:otherwise>
                <tr bgcolor="green">
                  <xsl:apply-templates select="." />
                </tr>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>  
  <xsl:template match="cd">
    <td>
      <xsl:value-of select="title"/>
    </td>
    <td>
      <xsl:value-of select="artist"/>
    </td>
    <td>
      <xsl:value-of select="year"/>
    </td>
  </xsl:template>
</xsl:stylesheet>
