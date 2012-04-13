Spine = require('spine')

class Planet extends Spine.Model
  @configure 'Planet', 'name', 'image','button', 'mass', 'radius', 'volume', 'atmosphere', 'distance','distance_au', 'moons', 'description'
  
  @findByName:(name)->
    @select (p) -> 
      p.name==name
module.exports = Planet