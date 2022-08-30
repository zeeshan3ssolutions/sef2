$( document ).on('turbolinks:load', function() {
    const toggle = $('#header-toggle'),
    nav = $('#nav-bar'),
    bodypd = $('#body-pd'),
    headerpd = $('#header')
    $( toggle ).click(function() {
        // show navbar
        nav.toggleClass('show')
        // change icon
        toggle.toggleClass('bx-x')
        // add padding to body
        bodypd.toggleClass('body-pd')
        // add padding to header
        headerpd.toggleClass('body-pd')
    });
})
