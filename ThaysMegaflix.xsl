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
                
               <div class="priceCalculation">

                <tr>
                    <td></td>
                    <th>
                        <h1>Bill</h1>
                    </th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                
                <tr>
                    <td></td>
                    <td>
                        <h3>Comedy</h3>
                    </td>
                    <td>
                        <h2>
                            <div id="totalComedy">€0</div>
                        </h2>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                
                  <tr>
                    <td></td>
                    <td>
                        <h3>Drama</h3>
                    </td>
                    <td>
                        <h2>
                            <div id="totalDrama">€0</div>
                        </h2>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td>
                        <h3>Romance</h3>
                    </td>
                    <td>
                        <h2>
                            <div id="totalRomance">€0</div>
                        </h2>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td></td>
                    <td>
                        <h3>Horror</h3>
                    </td>
                    <td>
                        <h2>
                            <div id="totalHorror">€0</div>
                        </h2>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td>
                        <h3>Action</h3>
                    </td>
                    <td>
                        <h2>
                            <div id="totalAction">€0</div>
                        </h2>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td>
                        <h3>Sci-fi</h3>
                    </td>
                    <td>
                        <h2>
                            <div id="totalSciFi">€0</div>
                        </h2>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td></td>
                    <td>
                        <h3>Classic</h3>
                    </td>
                    <td>
                        <h2>
                            <div id="totalClassic">€0</div>
                        </h2>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td>
                        <h3>TV Series Cost</h3>
                    </td>

                    <td>
                        <h2>
                            <div id="totalSeries">€0</div>
                        </h2>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td></td>
                    <td>
                        <h3>Movie Costs</h3>
                    </td>
                    <td>
                        <h2>
                            <div id="totalMovies">€0</div>
                        </h2>
                    </td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <h1 class="total"><b>Total:</b></h1>
                    </td>
                    <td>
                        <h2>
                            <div class="total" id="totalPrice">€0</div>
                        </h2>
                    </td>

                    <td></td>
                </tr>
                
                
                     </div>
              
                    </tbody>
    </table>
        </div>
        </div>
        
</body>
</html>
</xsl:template>
</xsl:stylesheet>


