class Config {
  Config._();

  static const String version = '2.0.8';
  static final Uri githubRepositoryUrl =
      Uri.https('github.com', '/techouse/alfred-nova-docs');
  static const String algoliaApplicationId = 'FGRCZANQVY';
  static const String algoliaSearchOnlyApiKey =
      '7c0aaf326992f08ed7bfc461a1b61ef3';
  static const String algoliaSearchIndex = 'laravel_nova';
  static const List<String> supportedVersions = ['v1', 'v2', 'v3', 'v4'];
}
