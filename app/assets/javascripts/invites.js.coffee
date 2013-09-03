# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $ ->
    $("#filter_all").on "click", ->
      $(".invite").removeClass "hidden"

    $("#filter_yes").on "click", ->
      $(".invite").removeClass "hidden"
      $(".invite").filter(".ans_no").addClass "hidden"
      $(".invite").filter(".ans_nr").addClass "hidden"

    $("#filter_no").on "click", ->
      $(".invite").removeClass "hidden"
      $(".invite").filter(".ans_yes").addClass "hidden"
      $(".invite").filter(".ans_nr").addClass "hidden"

    $("#filter_nr").on "click", ->
      $(".invite").removeClass "hidden"
      $(".invite").filter(".ans_yes").addClass "hidden"
      $(".invite").filter(".ans_no").addClass "hidden"
