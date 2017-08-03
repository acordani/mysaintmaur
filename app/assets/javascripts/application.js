//= require jquery
//= require jquery_ujs
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require bootstrap-sprockets
//= require owl.carousel
//= require_tree .


$(document).ready(function() {

  // $("#announce_tax_month").hide();


  
  $("#user_input_autocomplete_address").hide();
  $("#announce_isgeoloc_true").change(function() {

    if ( $("#announce_isgeoloc_true").val() == 'true'){

    $("#user_input_autocomplete_address").slideToggle("slow");
    }
  });

  $("#announce_isgeoloc_false").change(function() {

    if ( $("#announce_isgeoloc_false").val() == 'false'){

    $("#user_input_autocomplete_address").slideToggle("slow");
    }
  });


});