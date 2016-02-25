$(document).on("change", "#font_style", function(){
    $(".flashCardText h1").css("font-family", $(this).val());
});

$(document).on("change", "#font_size", function(){
    $(".flashCardText h1").css("font-size", $(this).val() + "vw");
});