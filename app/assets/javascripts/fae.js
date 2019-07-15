// This file is compiled into fae/application.js
// use this as another manifest file if you have a lot of javascript to add
// or just add your javascript directly to this file

// Uncomment the following line if you want to use Trumbowyg HTML Editor
// //= require fae/vendor/trumbowyg

console.log('eae')

$(document).ready(function() {
  $('input[name="discount[percentual]"]').change(function(){
    var selected = $('input:checked[name="discount[percentual]"]').val();
    var prefix = $('.input-symbol--prefix div');
    var suffix = $('.input-symbol--suffix div')
    if(selected == "true"){
      prefix.text('%')
      $('.input-symbol--prefix').addClass('input-symbol--suffix')
      $('.input-symbol--prefix').removeClass('input-symbol--prefix')
    }else if(selected == "false"){
      suffix.text('$')
      $('.input-symbol--suffix').addClass('input-symbol--prefix')
      $('.input-symbol--suffix').removeClass('input-symbol--suffix')
    }
  })
});