// To parse this JSON data, do
//
//     final quote = quoteFromJson(jsonString);

import 'dart:convert';

Quote quoteFromJson(String str) => Quote.fromJson(json.decode(str));

String quoteToJson(Quote data) => json.encode(data.toJson());

class Quote {
  Quote({
    this.quotes,
    this.total,
    this.skip,
    this.limit,
  });

  List<QuoteElement>? quotes;
  int? total;
  int? skip;
  int? limit;

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        quotes: List<QuoteElement>.from(
            json["quotes"].map((x) => QuoteElement.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "quotes": List<dynamic>.from(quotes!.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
      };
}

class QuoteElement {
  QuoteElement({
    this.id,
    this.quote,
    this.author,
  });

  int? id;
  String? quote;
  String? author;

  factory QuoteElement.fromJson(Map<String, dynamic> json) => QuoteElement(
        id: json["id"],
        quote: json["quote"],
        author: json["author"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quote": quote,
        "author": author,
      };
}
