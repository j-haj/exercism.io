object SpaceAge {
  def orbitalPeriodInEarthYears(planet: String): Double = {
    planet.toLowerCase match {
      case "mercury" => 0.2408467
      case "venus" => 0.61519726
      case "mars" => 1.8808158
      case "jupiter" => 11.862615
      case "saturn" => 29.447498
      case "uranus" => 84.016846
      case "neptune" => 164.79132
      // Catch any unknown or misspelled planets
      case _ => 0.0
    }
  }

  def onEarth(age: Double): Double = {
    age.asInstanceOf[Double] / 31557600
  }

  def onMars(age: Double): Double = {
    onEarth(age) / orbitalPeriodInEarthYears("mars")
  }

  def onVenus(age: Double): Double = {
    onEarth(age) / orbitalPeriodInEarthYears("venus")
  }

  def onMercury(age: Double): Double = {
    onEarth(age) / orbitalPeriodInEarthYears("mercury")
  }

  def onJupiter(age: Double): Double = {
    onEarth(age) / orbitalPeriodInEarthYears("jupiter")
  }

  def onUranus(age: Double): Double = {
    onEarth(age) / orbitalPeriodInEarthYears("uranus")
  }

  def onSaturn(age: Double): Double = {
    onEarth(age) / orbitalPeriodInEarthYears("saturn")
  }

  def onNeptune(age: Double): Double = {
    onEarth(age) / orbitalPeriodInEarthYears("neptune")
  }
}
