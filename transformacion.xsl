<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
      <title>ejr_6</title>
          <style type="text/css">    
            .colorico {
              color:red;
            }
        </style>
      </head>
      <body>
        <h2>CD catalog</h2>
        <ol>
          <xsl:for-each select="//cd[position()&lt;6]">
            <li>
              <div class="colorico">
                <xsl:value-of select="title" />
              </div>
              <xsl:value-of select="artist" />
              <xsl:text>, </xsl:text>
              <xsl:value-of select="year" />
              <br />
              <xsl:text>$</xsl:text>
              <xsl:value-of select="price" />
            </li>
          </xsl:for-each>
        </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>


