commands=
  planets:

    solarsystem:[
      "Camera.transitionspeed fast",
      "Camera.jumpto bookmark outer now", 
      "Mercury.prop.LabelEnabled false",
      "Venus.prop.LabelEnabled false",
      "Earth.prop.LabelEnabled false",
      "Mars.prop.LabelEnabled false",
      "Jupiter.prop.LabelEnabled true",
      "Saturn.prop.LabelEnabled true",
      "Neptune.prop.LabelEnabled true",
      "Uranus.prop.LabelEnabled true",
      "System.setsimulatedtimevelocity 31536000"
    ]

    solarsystemflyto:[
      "Camera.transitionspeed fast",
      "Camera.flyto bookmark outer fast", 
      "Mercury.prop.LabelEnabled true",
      "Venus.prop.LabelEnabled true",
      "Earth.prop.LabelEnabled true",
      "Mars.prop.LabelEnabled true",
      "Jupiter.prop.LabelEnabled true",
      "Saturn.prop.LabelEnabled true",
      "Neptune.prop.LabelEnabled true",
      "Uranus.prop.LabelEnabled true",
    ]
    Mercury:[
      "Camera.flyto Mercury",
      "System.setsimulatedtimevelocity 1"
      "Camera.rotate 10 10 0 "
    ]
    Venus:[
      "Camera.flyto Venus",
      "System.setsimulatedtimevelocity 1"
      "Camera.rotate 10 10 0 "
    ]
    Earth: [
      "Camera.flyto Earth",
      "System.setsimulatedtimevelocity 1"
      "Camera.rotate 10 10 0 "
    ]
    Mars: [
      "Camera.flyto Mars",
      "System.setsimulatedtimevelocity 1"
      "Camera.rotate 10 10 0 "
    ]
    Jupiter: [
      "Camera.flyto Jupiter",
      "System.setsimulatedtimevelocity 1"
      "Camera.rotate 10 10 0 "
    ]
    Saturn: [
      "Camera.flyto Saturn",
      "System.setsimulatedtimevelocity 1"
      "Camera.rotate 10 10 0 "
    ]
    Uranus: [
      "Uranus.cameraradius 200",
      "Camera.flyto Uranus",
      "System.setsimulatedtimevelocity 1"
      "Camera.rotate 10 10 0 "
      
    ]
    Neptune: [
      "Camera.flyto Neptune",
      "System.setsimulatedtimevelocity 1"
      "Camera.rotate 10 10 0 "
    ]

module.exports = commands