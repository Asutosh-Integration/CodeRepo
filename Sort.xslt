<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns="urn:Test.Namespace">
  <xsl:output indent="yes" />
  <xsl:strip-space elements="*"/>

  <xsl:template match="text()[not(string-length(normalize-space()))]"/>

  <xsl:template match="II_OUTPUT">
    <xsl:copy>
      <xsl:apply-templates select="row">
        <xsl:sort select="LNAME" />
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
