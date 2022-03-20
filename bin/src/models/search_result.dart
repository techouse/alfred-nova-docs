import 'search_result_hierarchy.dart';

class SearchResult {
  const SearchResult({
    required this.objectID,
    required this.type,
    required this.url,
    required this.hierarchy,
    this.content,
  });

  final String objectID;
  final String type;
  final String url;
  final SearchResultHierarchy hierarchy;
  final String? content;

  static const List<String> attributesToRetrieve = [
    'hierarchy.lvl0',
    'hierarchy.lvl1',
    'hierarchy.lvl2',
    'hierarchy.lvl3',
    'hierarchy.lvl4',
    'hierarchy.lvl5',
    'hierarchy.lvl6',
    'content',
    'type',
    'url',
    'anchor',
  ];

  SearchResult.fromJson(Map<String, dynamic> json)
      : objectID = json['objectID'] as String,
        type = json['type'] as String,
        url = json['url'] as String,
        hierarchy = SearchResultHierarchy.fromJson(
          json['hierarchy'] as Map<String, dynamic>,
        ),
        content = json['content'] as String?;

  Map<String, dynamic> toJson() => {
        'objectID': objectID,
        'type': type,
        'url': url,
        'content': content,
        'hierarchy': hierarchy.toJson(),
      };
}
