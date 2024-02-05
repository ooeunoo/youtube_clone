Uri generateQueryParamUri(String endpoint, Map<String, dynamic> params) {
  Uri uri = Uri.parse(endpoint);
  return uri.replace(queryParameters: params);
}
