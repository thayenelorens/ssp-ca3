<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<html>
<head>
      <!-- Required meta tags for the browser -->
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="Thayene Lorens" content="Creating an interactive Webpage">
  
      <!-- Bootstrap CSS version 4.5.2 -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  
      <!-- My CSS file-->
      <link rel="stylesheet" type="text/css" href="ThaysProject/css/style.css">
  
      <!--Google fonts link - Bahiana-->
      <link href='https://fonts.googleapis.com/css?family=Bahiana' rel='stylesheet'>
  
  
      <!--My home page title-->
      <title>Film Verse</title>
</link>        
</link>
</link>
</meta>	
</meta>
</meta>
</meta>
</head>
<body>

        <div>
            <h1>Film Verse</h1>

<div>

    <table>
        <thead>
            <tr>
                <th><h1>Item</h1></th>
                <th><h1>Quantity</h1></th>
                <th></th>
                <th><h1>Price</h1></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <xsl:for-each select="//genre">
                <tr>
                    <td colspan="5">
                        <h1><b><xsl:value-of select="@type" /></b></h1>
                    </td>
                </tr>
                <xsl:for-each select="collection">
                    <tr>
                        <xsl:attribute name="tv-series">
                            <xsl:value-of select="boolean(@tv-series)" />
                        </xsl:attribute>
                       
                        <td>						
                    <xsl:element name="img">				
                <xsl:attribute name="src">				
                <xsl:value-of select="cover"/>				
              </xsl:attribute>						
              <xsl:attribute name="align">left</xsl:attribute>		
                </xsl:element>						
               </td>		
                        <td>
                         <h1><b><xsl:value-of select="dvd" /></b></h1>
                        </td>
                   <td>
                            <input name="item0" type="number" min="0"/>
                        </td>
                         <td></td>
                        <td>
                           <h1><b><xsl:value-of select="price" /></b></h1>
                            <td></td>
                        </td>
                    </tr>

		            <tr>
		                <td>
 		                <p><xsl:value-of select="description" /></p>
		            </td>
		        </tr>
                 </xsl:for-each>
                </xsl:for-each>
              
                    </tbody>
    </table>
        </div>
        </div>
        
</body>
</html>
</xsl:template>
</xsl:stylesheet>