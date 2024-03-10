import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_list.freezed.dart';

@freezed
class ArticleList with _$ArticleList {
  factory ArticleList({
    required int count,
    required List<Article> articleList,
  }) = _ArticleList;
}

class Article {
  final int id;
  final String title;
  final String detail;

  Article({
    required this.id,
    required this.title,
    required this.detail,
  });
}