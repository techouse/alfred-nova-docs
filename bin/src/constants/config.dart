class Config {
  Config._();

  static const String version = '2.0.3';
  static final Uri githubRepositoryUrl =
      Uri.https('github.com', '/techouse/alfred-nova-docs');
  static const String algoliaApplicationId = 'BH4D9OD16A';
  static const String algoliaSearchOnlyApiKey =
      '5aa44fede3f10262000a8c4f046033d5';
  static const String algoliaSearchIndex = 'laravel_nova';
  static const List<String> supportedVersions = ['v1', 'v2', 'v3'];
}
