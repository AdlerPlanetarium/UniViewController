commands=
  planets:

    solarsystem:[
      "eventfade.execute camera.jumpto bookmark outer fast",
      "Mercury.prop.LabelEnabled false",
      "Venus.prop.LabelEnabled false",
      "Earth.prop.LabelEnabled false",
      "Mars.prop.LabelEnabled false"
    ]
    Mercury:[
      "Camera.flyto Mercury",
      "System.setsimulatedtimevelocity 7500"
    ]
    Venus:[
      "Camera.flyto Venus",
      "System.setsimulatedtimevelocity 7500"
    ]
    Earth: [
      "Camera.flyto Earth",
      "System.setsimulatedtimevelocity 7500"
    ]
    Mars: [
      "Camera.flyto Mars",
      "System.setsimulatedtimevelocity 7500"
    ]
    Jupiter: [
      "Camera.flyto Jupiter",
      "System.setsimulatedtimevelocity 7500"
    ]
    Saturn: [
      "Camera.flyto Saturn",
      "System.setsimulatedtimevelocity 7500"
    ]
    Uranus: [
      "Camera.flyto Uranus",
      "System.setsimulatedtimevelocity 7500"
    ]
    Neptune: [
      "Camera.flyto Neptune",
      "System.setsimulatedtimevelocity 7500"
    ]

module.exports = commands