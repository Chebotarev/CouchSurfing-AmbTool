# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

    checkboxes = $("input:checkbox")
    radiobuttons = $("input:radio")
    invite = $(".invite") 

    $.fn.hide = ->
      $(this).addClass "hidden"

    $.fn.unhide = ->
      $(this).removeClass "hidden"

    $.fn.countSelected = ->
      n = $(".selectable:checked").length
      $("#NumberSelected").text n + ((if n is 1 then " invite is" else " invites are")) + " selected"
 
    $.fn.disableFilters = ->
      radiobuttons.attr "disabled", true

    $.fn.enableFilters = ->
      radiobuttons.attr "disabled", false


    $(".selectable").on "click", ->
      $(this).countSelected()      

    $("#ShowSelectedButton").on "click", ->
      $("#SelectionTools").unhide()
      $("#ReshowAllButton").unhide()
      $("#ShowSelectedButton").hide()
      $("#MakeSelectedAmbs").unhide()
      $("#AddBlacklist").unhide()
      $("#DeleteSelected").unhide()
      $(".selectable").closest("tr").hide()
      $(".selectable:checked").closest("tr").unhide()
      $(this).disableFilters()

    $("#ReshowAllButton").on "click", ->
      $("#SelectionTools").hide()
      $("#ShowSelectedButton").unhide()
      $("#ReshowAllButton").hide()
      $("#MakeSelectedAmbs").hide()
      $("#AddBlacklist").hide()
      $("#DeleteSelected").hide()
      $(".selectable").closest("tr").unhide()
      $(this).enableFilters()
      radiobuttons.attr "checked", false
      $("#filter_all").prop "checked", true

    $("#SelectShownButton").on "click", ->
      checkboxes.each ->
        $(this).prop("checked", true) unless $(this).closest("tr").hasClass "hidden"
      $(this).countSelected()

    $("#DeselectAllButton").on "click", ->
      checkboxes.prop "checked", false
      $(this).countSelected()

    $("#filter_all").on "click", ->
      invite.unhide()

    $("#filter_yes").on "click", ->
      invite.unhide()
      invite.filter(".ans_no").hide()
      invite.filter(".ans_nr").hide()

    $("#filter_no").on "click", ->
      invite.unhide()
      invite.filter(".ans_yes").hide()
      invite.filter(".ans_nr").hide()

    $("#filter_r").on "click", ->
      invite.unhide()
      invite.hide()
      invite.filter(".responder").unhide()

    $("#filter_nr").on "click", ->
      invite.unhide()
      invite.filter(".ans_yes").hide()
      invite.filter(".ans_no").hide()

    
