# encoding: utf-8


class Config(object):
    # Number of results to fetch from API
    RESULT_COUNT = 20
    # How long to cache results for
    CACHE_MAX_AGE = 20  # seconds
    # Icon
    NOVA_ICON = "icon.png"
    GOOGLE_ICON = "google.png"
    # Algolia credentials
    ALGOLIA_APP_ID = "6EVZSN4WQD"
    ALGOLIA_SEARCH_ONLY_API_KEY = "bf1eceffbd547a1443da21aab145c2d5"
    ALGOLIA_SEARCH_INDEX = "nova-docs-1.0"
