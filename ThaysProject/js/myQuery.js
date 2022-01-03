$(document).ready(function(){
    /* Get iframe src attribute value i.e. YouTube video url
    and store it in a variable */
    var url = $("#movieTrailer").attr('src');
    
    /* Assign empty url value to the iframe src attribute when
    modal hide, which stop the video playing */
    $("#myModal1").on('hide.bs.modal', function(){
        $("#movieTrailer").attr('src', '');
    });
   
    
    });

    /* Assign the initially stored url back to the iframe src
    attribute when modal is displayed again */
    $("#myModal1").on('show.bs.modal', function(){
        $("#movieTrailer").attr('src', url);
    });
   
/**
 * In this function once the document is ready or loaded and the user hovers the cursor on the button whose id is "contact1",
 * the 'panel' element will slowly slide down, making it interactive.
 * This function was sourced from: https://www.w3schools.com/jquery/tryit.asp?filename=tryjquery_slide_down
 */
 $(document).ready(function () {
    $("#contact").mouseenter(function () {
      $("#panel").slideDown("slow");
    });
  });