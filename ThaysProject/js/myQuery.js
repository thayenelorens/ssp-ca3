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