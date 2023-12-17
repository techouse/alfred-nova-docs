part of 'main.dart';

final HtmlUnescape _unescape = HtmlUnescape();

final AlfredWorkflow _workflow = AlfredWorkflow()
  ..disableAlfredSmartResultOrdering = true;

final AlfredUpdater _updater = AlfredUpdater(
  githubRepositoryUrl: Uri.parse(Env.githubRepositoryUrl),
  currentVersion: Env.appVersion,
  updateInterval: Duration(days: 7),
);

const _updateItem = AlfredItem(
  title: 'Auto-Update available!',
  subtitle: 'Press <enter> to auto-update to a new version of this workflow.',
  arg: 'update:workflow',
  match:
      'Auto-Update available! Press <enter> to auto-update to a new version of this workflow.',
  icon: AlfredItemIcon(path: 'alfredhatcog.png'),
  valid: true,
);

void _showPlaceholder() {
  _workflow.addItem(
    const AlfredItem(
      title: 'Search the Laravel Nova docs...',
      icon: AlfredItemIcon(path: 'icon.png'),
    ),
  );
}

Future<void> _performSearch(String query, {String? version}) async {
  try {
    final SearchResponse res = await AlgoliaSearch.query(
      query,
      version: version,
    );

    if (res.nbHits > 0) {
      final AlfredItems items = AlfredItems(
        res.hits
            .map((Hit hit) => SearchResult.fromJson(
                <String, dynamic>{...hit, 'objectID': hit.objectID}))
            .map(
          (SearchResult result) {
            final String title = _unescape.convert(result.hierarchy.last);
            final String subtitle = result.content != null
                ? _unescape.convert(result.content!).truncate(75)
                : '';

            return AlfredItem(
              uid: result.objectID,
              title: title,
              subtitle: subtitle,
              arg: result.url,
              text: AlfredItemText(
                largeType: title,
                copy: result.url,
              ),
              quickLookUrl: result.url,
              icon: AlfredItemIcon(path: 'icon.png'),
              valid: true,
            );
          },
        ).toList(),
      );
      _workflow.addItems(items.items);
    } else {
      final Uri url =
          Uri.https('www.google.com', '/search', {'q': 'Laravel Nova $query'});

      _workflow.addItem(
        AlfredItem(
          title: 'No matching answers found',
          subtitle: 'Shall I try and search Google?',
          arg: url.toString(),
          text: AlfredItemText(
            copy: url.toString(),
          ),
          quickLookUrl: url.toString(),
          icon: AlfredItemIcon(path: 'google.png'),
          valid: true,
        ),
      );
    }
  } finally {
    AlgoliaSearch.dispose();
  }
}
