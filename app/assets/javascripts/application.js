// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
//= require cookies_eu

//= require js.cookie
'use strict';

var cookiesEu = {
  init: function() {
    var cookiesEuOKButton = document.querySelector('.js-cookies-eu-ok');

    if (cookiesEuOKButton) {
      this.addListener(cookiesEuOKButton);
    }
  },

  addListener: function(target) {
    // Support for IE < 9
    if (target.attachEvent) {
      target.attachEvent('onclick', this.setCookie);
    } else {
      target.addEventListener('click', this.setCookie, false);
    }
  },

  setCookie: function() {
    Cookies.set('cookie_eu_consented', true, { path: '/', expires: 365 });

    var container = document.querySelector('.js-cookies-eu');
    container.parentNode.removeChild(container);
  }
};

(function() {
  var isCalled = false;

  function isReady() {
    if (isCalled) return;
    isCalled = true;

    cookiesEu.init();
  }

  if (document.addEventListener) {
    document.addEventListener('DOMContentLoaded', isReady, false);
  }

  // Old browsers IE < 9
  if (window.addEventListener) {
    window.addEventListener('load', isReady, false);
  } else if (window.attachEvent) {
    window.attachEvent('onload', isReady);
  }
})();









  (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/de_DE/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));//= require cookies_eu

document.addEventListener("turbolinks:load", function() {
  tinymce.remove();
  tinymce.init({
    height: '475',
    selector:'textarea#post_body',
    plugins: "autosave codesample image media link code textcolor preview table",
    toolbar: "undo redo | styleselect | forecolor backcolor | bold italic link | codesample image media | code | restoredraft | preview | table"
  });
})
