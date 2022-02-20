# encoding: utf-8


class Config(object):
    # Number of results to fetch from API
    RESULT_COUNT = 20
    # How long to cache results for
    CACHE_MAX_AGE = 20  # seconds
    # Icon
    NOVA_ICON = "icon.png"
    GOOGLE_ICON = "google.png"
    # supported docs
    SUPPORTED_NOVA_VERSIONS = {"v3", "v2", "v1"}
    DEFAULT_NOVA_VERSION = "3"
    # Algolia credentials
    ALGOLIA_APP_ID = "BH4D9OD16A"
    ALGOLIA_SEARCH_ONLY_API_KEY = "5aa44fede3f10262000a8c4f046033d5"
    ALGOLIA_SEARCH_INDEX = "laravel_nova"
