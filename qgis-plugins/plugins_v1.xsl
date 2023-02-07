<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="plugins">

<html>
<head>
<title>QGIS Plugins Repository</title>
<style>
    body  {
      font-family:Verdana, Arial, Helvetica, sans-serif;
      background-color: #fefefe;
     }
    div.plugin {
     background-color:#999999;
     border:1px solid #000000;
     clear:both;
     display:block;
     padding:0 0 0.5em;
     margin:1em;
    }
    div.head {
      background-color:#cccccc;
      border-bottom-width:0;
      color:#0;
      display:block;
      font-size:200%;
      font-weight:bold;
      margin:0;
      padding:0.3em 1em;
    }
    div.description{
      display: block;
      float:none;
      margin:0;
      text-align: left;
      padding:0.2em 0.5em 0.4em;
      color: black;
      font-size:130%;
      font-weight:normal;
      font-style: italic;
    }
     div.about{
      display: block;
      float:none;
      margin:0;
      text-align: left;
      padding:0.2em 0.5em 0.4em;
      color: black;
      font-size:110%;
      font-weight:bold;
    }
    div.info{
      font-size: 80%;
      font-weight:normal;
      padding: 0em 0em 0em 1em;
    }
    h1{
        font-size: 300%;
    }
</style>

</head>
<body>
<h1>QGIS Plugins Repository</h1>

<xsl:for-each select="/plugins/pyqgis_plugin">
<div class="plugin">
<div class="head">
<!--
<xsl:element name="a">
<xsl:attribute name="href">
<xsl:value-of select="homepage" />
</xsl:attribute>
-->
<xsl:value-of select="@name" /> : <xsl:value-of select="@version" />
<!--
</xsl:element>
-->
</div>
<div class="description">
<xsl:value-of select="description" />
</div>
<div class="about">
<xsl:value-of select="about" />
</div>
<div class="tags info">
<b>Tags:</b>&#160;
<xsl:value-of select="tags" />
</div>
<div class="download info">
<b>Download:</b>&#160;
<xsl:element name="a">
 <xsl:attribute name="href">
  <xsl:value-of select="download_url" />
 </xsl:attribute>
 <xsl:value-of select="file_name" />
</xsl:element>
</div>
<div class="author info">
<b>Author:</b>&#160;<xsl:value-of select="author_name" />
</div>
<div class="version info">
<b>Version:</b>&#160;<xsl:value-of select="version" />
</div>
<div class="experimental info">
<b>Experimental:</b>&#160;<xsl:value-of select="experimental" />
</div>
<div class="deprecated info">
<b>Deprecated:</b>&#160;<xsl:value-of select="deprecated" />
</div>
<div class="minversion info">
<b>Minimum QGIS Version:</b>&#160;<xsl:value-of select="qgis_minimum_version" />
</div>
<div class="maxversion info">
<b>Maximum QGIS Version:</b>&#160;<xsl:value-of select="qgis_maximum_version" />
</div>
<div class="homepage info">
<b>Home page:</b>&#160;
<xsl:element name="a">
 <xsl:attribute name="href">
  <xsl:value-of select="homepage" />
 </xsl:attribute>
 <xsl:value-of select="homepage" />
</xsl:element>
</div>
<div class="tracker info">
<b>Tracker:</b>&#160;
<xsl:element name="a">
 <xsl:attribute name="href">
  <xsl:value-of select="tracker" />
 </xsl:attribute>
 <xsl:value-of select="tracker" />
</xsl:element>
</div>
<div class="repository info">
<b>Repository:</b>&#160;
<xsl:element name="a">
 <xsl:attribute name="href">
  <xsl:value-of select="repository" />
 </xsl:attribute>
 <xsl:value-of select="repository" />
</xsl:element>
</div>
<div class="downloads info">
<b>Number of downloads:</b>&#160;<xsl:value-of select="downloads" />
</div>

</div>
</xsl:for-each>
</body>
</html>

</xsl:template>

</xsl:stylesheet>
