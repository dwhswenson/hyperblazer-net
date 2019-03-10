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

// from https://stackoverflow.com/a/40278742/4205735
var pdfOpenParams = "#page=1&pagemode=none"; //pagemode=none,bookmarks,thumbs
$(".fancybox-pdf").fancybox({
    type: 'iframe',
    padding: 0,
    openEffect: 'fade',
    openSpeed: 150,
    closeEffect: 'fade',
    closeSpeed: 150,
    width: '60%',
    height: '100%',
    maxWidth: '100%',
    maxHeight: '100%',
    iframe: {
        preload: false
    },
    beforeLoad: function() {
        var url = $(this.element).attr("href");
        this.href = "https://mozilla.github.io/pdf.js/web/viewer.html?file=" + url + pdfOpenParams;
    });
});

});
