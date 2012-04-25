Spine = require('spine')
Planet = require('models/Planet')

class UniViewController extends Spine.Controller
  constructor: ->
    super
    @loadCommands()
    @setUpSockets()
    Planet.bind 'planetSelected', @selectPlanet
  
  loadCommands:->
    @commands = require('lib/commands')

  setUpSockets:->
    config = require('lib/config')
    @ws = new WebSocket("#{config.url}:#{config.port}")

  selectPlanet:(planet)=>
    if @ws.readyState == 1
      @ws.send @commands.planets[planet.name].join(";")

module.exports = UniViewController