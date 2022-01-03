<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<!--I was not capable of inserting the metadata here, so I did it in the html file.-->
<!--Using xslt to transform the xml file into html-->
<html>
<body>

<!--Embodying the table inside a div container.
    Using Bootstrap 4 container-->
    
<!--This div embodies all my other divs-->
 <div class= "container">
 <!--Heading-->
        <div id="catalog">
         <h1 id="heading">Thay's Megaflix</h1>
         </div>
    
 <div class= "table_of_contents" >
 <!--Beginning of the table-->
    <table>
    <!--Table headings-->
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
        <!--Beginning of table body-->
        <tbody>
        <!--For-each loop to iterate through the xml file elements by selecting
            the tags within the genre tag-->
            <xsl:for-each select="//genre">
            <!--This row will select and display the value of the attribute 'type'-->
                <tr>
                    <td class="genres" colspan="6">
                        <h1><b><xsl:value-of select="@type" /></b></h1>
                    </td>
                </tr>
                <!--For-each loop to iterate through the xml file elements by selecting
                    the tags within the collection tag-->
                <xsl:for-each select="collection">
                <!--Boolean attribute: true if the DVD is a TV series instead of a movie-->
                    <tr>
                        <xsl:attribute name="tv-series">
                            <xsl:value-of select="boolean(@tv-series)" />
                        </xsl:attribute>

                <!--This block of code selects all the images from the xml file by the 'src' attribute
                and also establishes alignment to the left and proper width to each image.
                Part of the code was extracted from: https://stackoverflow.com/questions/13780145/inserting-images-from-xml-to-xsl-document
                For the width part I only followed the logic from this block of code and from the block of code above (lines 54-57) -->  
                         <td>                        
                    <xsl:element name="img">				
                    <xsl:attribute name="src">				
                    <xsl:value-of select="picture"/>		  		
                </xsl:attribute>	
                    <xsl:attribute name="width">200</xsl:attribute>						
                    <xsl:attribute name="align">left</xsl:attribute>		
                </xsl:element>						
                        </td>	
                    <!--This row will select the value from each DVD tag-->	
                        <td>
                         <h1><b><xsl:value-of select="dvd" /></b></h1>
                        </td>
                
                <!--Lines 79 - 100 were extracted from: 
            https://www.tutorialrepublic.com/codelab.php?topic=faq&file=play-youtube-video-in-bootstrap-modal -->
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

               <!-- This line of code I changed by studying on how to select the links within the trailer tags. 
               This question helped me link the idea from the bootstrap code with what I was willing to do for the loop
               to function properly: https://stackoverflow.com/questions/5235576/problems-with-embedding-youtube-with-xslt-transforms-->
                    
                <!--The /embed for the trailer tag in the xml file was crucial for it to work-->
                    <iframe id="movieTrailer" class="embed-responsive-item" width="560" height="315" src="{trailer}"></iframe>   
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>     
                         </td>
                <!--I could not add the attribute &nbsp; using xslt, so I did it in the html file.-->
                          <td></td>
                <!--This column will select and display the price of each DVD-->
                        <td>
                           <h1><span class="badge badge-warning"><b><xsl:value-of select="price" /></b></span></h1>
                            <td></td>   
                        </td>
                    </tr>

    	            <tr>
		                <td colspan="6">
                    <!--This column will select and display the description of each DVD-->
 		                <p><xsl:value-of select="description" /></p>
		            </td>
		        </tr>
                 </xsl:for-each>
                </xsl:for-each>
                
                    </tbody>
                <!--End of tbody-->
    </table>
    <!--End of table-->
    </div>  
    <!-- Using Bootstrap 4 jumbotron-->
      <div class="jumbotron">
<!--Using Bootstrap to create a 2 column grid system (50% each)-->
  <div class="container-fluid">
  <div class="row">
  <!--First column is empty here. A photo will be added straight in the html file-->
    <div class="col"></div>
    <div class="col">
    <button class="btn btn-primary" id="contact">Contact</button>
    <!--Extra content will be added within this div in the html file-->
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
<!--End of xsl file-->



