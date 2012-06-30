# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('.raty.new').raty
    half: true
    path: '/assets'

  $('.raty.show').each (i, v) ->
    $(v).raty
      half: true
      path: '/assets'
      score: $(v).data('score')
      readOnly: true