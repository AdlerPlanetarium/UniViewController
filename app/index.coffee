require('lib/setup')

PlanetDetails = require('controllers/PlanetDetails')
PlanetSelector = require('controllers/PlanetSelector')
UniViewController = require('controllers/UniViewController')

Planet = require('models/Planet')
Spine = require('spine')

class App extends Spine.Controller
  constructor: ->
    super

    planets = require('lib/planets')
    
    $("body").bind 'touchmove', (e)=>
      e.preventDefault()
  

    for planet,details of planets
      console.log planet, details
      Planet.create(details)
    

    @append new PlanetDetails()
    @append new PlanetSelector()
    @append = new UniViewController()


module.exports = App
    