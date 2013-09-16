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
    $("#ShowWarnButton").unhide()
    $("#ResolveButton").unhide()

  $("#ResolveButton").on "click", ->
    confirmation = confirm("Are you sure? Triggered warnings must be handled manually by an administrator, forcing a resolve will only remove the flags that trigger alerts.")
    if confirmation
      $("tr").removeClass("warning_color") if $("tr").hasClass "warning_color"

  $("#ShowWarnButton").on "click", ->
    $("#ReshowBlacklists").unhide()
    $(this).hide()
    $("tr").each ->
      $(this).hide() unless $(this).hasClass "warning_color"

  $("#ReshowBlacklists").on "click", ->
    $("tr").unhide()
    $(this).hide()
    $("#ShowWarnButton").unhide() 
