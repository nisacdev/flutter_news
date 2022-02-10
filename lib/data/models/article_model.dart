import 'source_model.dart';
import 'dart:convert';


class Article {
    Article({
  required this.source,
  this.author,
  required this.title,
  required this.description,
  required this.url,
  required this.urlToImage,
  required this.publishedAt,
  this.content,
  });


  Source source;
  String? author;
  String title;
  String description;
  String url;
  String? urlToImage;
  DateTime publishedAt;
  String? content;

factory Article.fromJson(String str) => Article.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Article.fromMap(Map<String, dynamic> json) => Article(
        source: Source.fromMap(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"] ?? 'No Description.',
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toMap() => {
        "source": source.toMap(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
      };
}


