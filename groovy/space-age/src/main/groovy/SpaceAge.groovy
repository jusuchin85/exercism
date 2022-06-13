class SpaceAge {

    static planets = [
        "Mercury" : 0.2408467,
        "Venus" : 0.61519726,
        "Earth" : 1,
        "Mars" : 1.8808158,
        "Jupiter" : 11.862615,
        "Saturn" : 29.447498,
        "Uranus" : 84.016846,
        "Neptune" : 164.79132
    ]

    static SECONDS_IN_EARTH = 31557600

    static double age(String planet, int seconds) {
        (seconds/SECONDS_IN_EARTH/planets[planet]).round(2)
    }

}
