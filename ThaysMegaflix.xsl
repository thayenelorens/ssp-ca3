<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<html>
<body>

        <div>
            <h1> Thay's Megaflix</h1>

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
                    <td colspan="3">
                        <h1><b><xsl:value-of select="@type" /></b></h1>
                    </td>
                </tr>
                <xsl:for-each select="collection">
                    <tr>
                        <xsl:attribute name="tv-series">
                            <xsl:value-of select="boolean(@tv-series)" />
                        </xsl:attribute>
                       
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
 		                <p><i><xsl:value-of select="description" /></i></p>
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
