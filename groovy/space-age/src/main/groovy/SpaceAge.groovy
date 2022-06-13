class SpaceAge {

    static planets = [
        1: [name: 'Mercury', period: 0.2408467],
        2: [name: 'Venus', period: 0.61519726],
        3: [name: 'Earth', period: 1],
        4: [name: 'Mars', period: 1.8808158],
        5: [name: 'Jupiter', period: 11.862615],
        6: [name: 'Saturn', period: 29.447498],
        7: [name: 'Uranus', period: 84.016846],
        8: [name: 'Neptune', period: 164.79132]
    ]

    static int SECONDS_IN_EARTH = 31557600

    static double age(String planet, int seconds) {
        def thePlanet = planets.find { it.value.name == planet }
        ((seconds / SECONDS_IN_EARTH) / thePlanet.value.period).round(2)
    }

}
