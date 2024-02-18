// To parse this JSON data, do
//
//     final pageInfo = pageInfoFromJson(jsonString);

import 'dart:convert';

PageInfo pageInfoFromJson(String str) => PageInfo.fromJson(json.decode(str));

String pageInfoToJson(PageInfo data) => json.encode(data.toJson());

class PageInfo {
  int totalResults;
  int resultsPerPage;

  PageInfo({
    required this.totalResults,
    required this.resultsPerPage,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        totalResults: json["totalResults"],
        resultsPerPage: json["resultsPerPage"],
      );

  Map<String, dynamic> toJson() => {
        "totalResults": totalResults,
        "resultsPerPage": resultsPerPage,
      };
}
