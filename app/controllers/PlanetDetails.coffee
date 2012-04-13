Spine = require('spine')
Planet = require('models/Planet')


class PlanetDetails extends Spine.Controller
  className: "all_planet_detials"

  elements: 
    ".planetInfoDisplay" : "planetDisplays" 

  constructor: ->
    super
    Planet.bind 'planetSelected', @selectPlanet
    @render()
    @selectPlanet Planet.first()
  
  selectPlanet:(planet)=>
    $(".planetInfoDisplay").css("display","none")
    $(".#{planet.name}").css("display", "block")

  render:=>
    for planet in Planet.all()
      @append require('views/planetDetails')(planet)
    
module.exports = PlanetDetails