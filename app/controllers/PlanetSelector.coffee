Spine = require('spine')
Planet = require('models/Planet')

class PlanetSelector extends Spine.Controller
  events:
    'touchstart .planet_button' : "planetSelect"
    'click .planet_button' : "planetSelect"

  constructor: ->
    super
    @render()

  render:->
    @html require('views/planetBar')
      planets: Planet.all()

  planetSelect:(e)=>
    unless @disableSelect
      $('#prompt').html("FLYING!!!")
      $(".planet_button").css('opacity', "0.2")
      @disableSelect= true 

      setTimeout =>
        $('#prompt').html("Click on a planet to fly there")
        $(".planet_button").css('opacity', "1")
        @disableSelect=false
      ,5000

      $(".planet_button img").removeClass("pulse")
      $(e.currentTarget).find("img").addClass("pulse")
      name = $(e.currentTarget).attr("data-planetName")

      Planet.trigger('planetSelected', Planet.findByName(name)[0])
    
module.exports = PlanetSelector