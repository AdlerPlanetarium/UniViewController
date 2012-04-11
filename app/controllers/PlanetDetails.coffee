Spine = require('spine')
Planet = require('models/Planet')

class PlanetDetails extends Spine.Controller
  constructor: ->
    super
    @showDetails Planet.first()
    Planet.bind 'planetSelected', @showDetails

  showDetails:(planet)=>
    @html require('views/planetDetails')(planet)
    
module.exports = PlanetDetails