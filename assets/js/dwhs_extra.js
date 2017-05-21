$(document).ready(function() {
//$('a.read').click(function () {
    //$(this).siblings('.whole-post').is(':visible') ? $(this).html('Read More...') : $(this).html('Show Less');
    //$(this).siblings('.excerpt').slideToggle(500);
    //$(this).siblings('.whole-post').slideToggle(500); 
//});

$('a.toggle_more').click(function (e) {
    e.preventDefault();
    $(this).siblings('.more').is(':visible') ? $(this).html('Show more') : $(this).html('Show less');
    $(this).siblings('.more').slideToggle(500);
});

$('a.toggle_answer').click(function () {
    $(this).parent().siblings('.answer').is(':visible') ? $(this).html('Show answer...') : $(this).html('Hide answer');
    $(this).parent().siblings('.answer').slideToggle(500); 
});

});
