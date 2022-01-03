<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<html>
<body>

 <div class= "container">
        <div id="catalog">
         <h1 id="heading">Thay's Megaflix</h1>
         </div>
 <div class= "table_of_contents" >
    <table>
        <thead>
                  <tr>
                     <th>
                        <h1><span class="badge badge-primary">PHOTO</span></h1>
                     </th>
                     <th>
                        <h1><span class="badge badge-primary">ITEM</span></h1>
                     </th>
                     <th>
                        <h1><span class="badge badge-primary">TRAILER</span></h1>
                     </th>
                     <th></th>
                     <th>
                        <h1><span class="badge badge-primary">PRICE</span></h1>
                     </th>
                     <th></th>
                  </tr>
               </thead>
        <tbody>
            <xsl:for-each select="//genre">
                <tr>
                    <td class="genres" colspan="6">
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
                <xsl:value-of select="picture"/>		  		
              </xsl:attribute>	
              <xsl:attribute name="width">200</xsl:attribute>						
              <xsl:attribute name="align">left</xsl:attribute>		
                </xsl:element>						
               </td>		
                        <td>
                         <h1><b><xsl:value-of select="dvd" /></b></h1>
                        </td>
                        
                        <td>
                  <div class="bs-example">
    <!-- Button HTML (to Trigger Modal) -->
    <a href="#myModal" class="btn btn-primary btn-lg" data-toggle="modal">Watch Trailer</a>
    
    <!-- Modal HTML -->
    <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">YouTube Video</h5>
                    <button type="button" class="close" data-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                  <div class="embed-responsive embed-responsive-16by9">

                    <iframe id="movieTrailer" class="embed-responsive-item" width="560" height="315" src="{trailer}"></iframe>   
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>     
                         </td>
                          <td></td>
                        <td>
                           <h1><span class="badge badge-warning"><b><xsl:value-of select="price" /></b></span></h1>
                            <td></td>   
                        </td>
                    </tr>

    	            <tr>
		                <td colspan="6">
 		                <p><xsl:value-of select="description" /></p>
		            </td>
		        </tr>
                 </xsl:for-each>
                </xsl:for-each>
                
              
              
                    </tbody>
    </table>
    </div>  
    <!-- Using Bootstrap 4 jumbotron-->
      <div class="jumbotron">
  <div class="container-fluid">
  <div class="row">
    <div class="col"></div>
    <div class="col">
    <button class="btn btn-primary" id="contact">Contact</button>
    <div id="panel">
   
    <h2>CONTACT</h2>
    </div>
    </div>
  </div>     
        </div>
        </div>
        </div>

</body>
</html>
</xsl:template>
</xsl:stylesheet>




