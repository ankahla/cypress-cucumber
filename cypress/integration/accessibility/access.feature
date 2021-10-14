Feature: Check availability of pages

    Scenario Outline: Check availability of homepages
        Given I open the url: <url>
        Then the response status code should be 200

    Examples:
        | url                                  |
        | "/"                                  |
        | "/france-2/"                         |
        | "/sport/"                            |
        | "/france-3/bourgogne-franche-comte/" |
        | "/la1ere/"                           |
        | "/la1ere/saint-pierre-et-miquelon/"  |

    Scenario Outline:  Check availability of player pages
        Given I open the url: <url>
        Then the response status code should be 200

    Examples:
        | url                                  |
        | "/france-2/direct.html"              |
        | "/sport/tous-les-directs/"           |

    Scenario Outline: Check availability of videos deep pages
        Given I open the url: <url>
        Then the response status code should be 200

    Examples:
        | url                                                                |
        | "/toutes-les-videos/"                                              |
        | "/france-2/toutes-les-videos/"                                     |
        | "/sport/toutes-les-videos/"                                        |
        | "/france-3/plus-belle-la-vie/toutes-les-videos/"                   |
        | "/france-3/auvergne-rhone-alpes/12-13-auvergne/toutes-les-videos/" |
        | "/france-3/bourgogne-franche-comte/toutes-les-videos/"             |
        | "/la1ere/toutes-les-videos/"                                       |
        | "/la1ere/saint-pierre-et-miquelon/toutes-les-videos/"              |

    Scenario Outline: Check availability of programs deep pages
        Given I open the url: <url>
        Then the response status code should be <status_code>

    Examples:
        | url                                                                  | status_code |
        | "/tous-les-programmes/"                                              | 200         |
        | "/france-2/tous-les-programmes/"                                     | 200         |
        | "/sport/tous-les-programmes/"                                        | 200         |
        | "/france-3/plus-belle-la-vie/tous-les-programmes/"                   | 404         |
        | "/france-3/auvergne-rhone-alpes/12-13-auvergne/tous-les-programmes/" | 404         |
        | "/france-3/bourgogne-franche-comte/tous-les-programmes/"             | 200         |
        | "/la1ere/saint-pierre-et-miquelon/tous-les-programmes/"              | 200         |
    @accessibility
    Scenario Outline: Check availability of seasons deep pages
        Given I open the url: <url>
        Then the response status code should be <status_code>

    Examples:
        | url                                                                  | status_code |
        | "/france-3/plus-belle-la-vie/saison-12/"                             | 200         |
