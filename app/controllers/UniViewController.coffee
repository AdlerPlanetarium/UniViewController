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

    console.log "conecting to #{config.url} on port #{config.port}"
    window.ws = @ws

    @keepUp = setInterval =>
      console.log "testing connection #{@ws.readyState}"
      if @ws.readyState==2 or @ws.readyState==3 
        clearTimeout(@keepUp)
        @setUpSockets()
    , 10000

    @ws.onerror =  =>
      console.log "errror"
      clearTimeout(@keepUp)
      @setUpSockets()

    
  selectPlanet:(planet)=>
    if @ws.readyState == 1
      # @ws.send @commands.planets["solarsystemflyto"].join(";")
      @ws.send @commands.planets[planet.name].join(";")
      
      

module.exports = UniViewController