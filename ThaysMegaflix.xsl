<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<!--Using xslt to transform the xml file into html-->
<html>
<head>
 <!-- Bootstrap CSS version 4.5.2 -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

   <!-- My CSS file-->
   <link rel="stylesheet" type=text/css href="ThaysProject/css/style.css">

   <!--Google fonts link - Bahiana-->
   <link href='https://fonts.googleapis.com/css?family=Bahiana' rel='stylesheet'>

   <!--I was not capable of inserting the script metadata here, so I did it in the html file instead.-->
   <!--I even tried to use the script tag and insert some code with CDATA, but still unsuccessful.-->
</head>
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
                        <h1 align="center"><span class="badge badge-primary">TRAILER</span></h1>
                     </th>
                    
                     <th>
                        <h1><span class="badge badge-primary">PRICE</span></h1>
                     </th>
                   
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
                For the width part I only followed the logic from this block of code and from the block of code above (lines 69-71) -->  
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
                
               <!--This link helped me build the code below: https://stackoverflow.com/questions/5235576/problems-with-embedding-youtube-with-xslt-transforms
                    Just "wrapping" the iframe tag with the xsl tag was a bit tricky, this is something I had to think a lot by myself
                    and it actually worked.-->
                        <td>
                  <iframe width="400" 
                        height="300" 
                        src="{trailer}" 
                        frameborder="0"><xsl:value-of select="trailer" /></iframe>   
                         </td>
                          
                <!--This column will select and display the price of each DVD-->
                        <td>
                           <h1><span class="badge badge-warning"><b><xsl:value-of select="price" /></b></span></h1>    
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
               <div class="col">
                  <!--This half of the grid will display the gif below-->
                  <img src="ThaysProject/images/truman.gif"/>
               </div>
               <div class="col">
                  <!--This button triggers a jQuery function that changes the behavior of the "panel" div below-->
                  <!--I could not use the jQuery boilerplate in the head section of this document.
                  I ended up pasting it straight in the HTML file and it worked there. However,when setting
                  the command node index.js, it won't work due to the absence of the script in this file..-->
                  <button class="btn btn-primary" id="contact">Contact</button>
                  <div id="panel">
                     <br>
                     <p>Student name: Thayene Lorens</p>
                     <p>Student number: 2020293</p>
                     <!--target blank, opens link in a different page-->
                     <p>Email: <a href="mailto:thayenelorens@gmail.com" title="Contact me" target=_blank
                           class="btn btn-warning">thayenelorens@gmail.com</a></p>
                     <p>Professor: Mikhail Timofeev</p>
                     <!--target blank, opens link in a different page-->
                     <p>Click here: <a href="https://github.com/thayenelorens/ssp-ca3.git" target="_blank"
                           title="Github" target=_blank class="btn btn-warning">Github link</a></p>
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



