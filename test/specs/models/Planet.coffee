describe 'Planet', ->
  Planet = null
  
  beforeEach ->
    class Planet extends Spine.Model
      @configure 'Planet'
  
  it 'can noop', ->
    