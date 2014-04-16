# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#slides").slidesjs
    width: 265
    height: 205
    navigation:
      active: false

    pagination:
      active: false

    play:
      active: false
      effect: "slide"
      interval: 5000
      auto: true
      swap: false
      pauseOnHover: true

  return