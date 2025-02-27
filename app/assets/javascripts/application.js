// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// !!!!!!!!! DO NOT RE-ORDER THE FILES BELOW -- IT MATTERS
//= require rails-ujs
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require social-share-button

// This is to deal with incorrect positioning of anchor link due to the sticky navbar

var shiftWindow = function() { scrollBy(0, -65) };
if (location.hash) shiftWindow();
window.addEventListener("hashchange", shiftWindow);
