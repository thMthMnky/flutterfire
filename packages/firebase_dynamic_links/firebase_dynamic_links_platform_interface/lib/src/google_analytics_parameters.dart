/// The Dynamic Link analytics parameters.
class GoogleAnalyticsParameters {
  const GoogleAnalyticsParameters({
    required String this.campaign,
    this.content,
    required String this.medium,
    required String this.source,
    this.term,
  });

  GoogleAnalyticsParameters.empty()
      : campaign = null,
        content = null,
        medium = null,
        source = null,
        term = null;

  /// The utm_campaign analytics parameter.
  final String? campaign;

  /// The utm_content analytics parameter.
  final String? content;

  /// The utm_medium analytics parameter.
  final String? medium;

  /// The utm_source analytics parameter.
  final String? source;

  /// The utm_term analytics parameter.
  final String? term;

  Map<String, dynamic> get data => <String, dynamic>{
    'campaign': campaign,
    'content': content,
    'medium': medium,
    'source': source,
    'term': term,
  };
}