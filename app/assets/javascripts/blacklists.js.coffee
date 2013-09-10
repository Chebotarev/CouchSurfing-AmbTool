# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  $.fn.hide = ->
    $(this).addClass "hidden"

  $.fn.unhide = ->
    $(this).removeClass "hidden"

  if $("tr").hasClass "warning_color"
    n = $(".warning_color").length
    $("#NumberWarnings").text n + " triggered " + ((if n is 1 then "warning" else "warnings"))
    $("#NumberWarnings").unhide()
    $("#WarningImg").unhide()
    $("#ResolveButton").unhide()

  $("#ResolveButton").on "click", ->
    $("tr").removeClass "warning_color"
