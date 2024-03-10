// 1. add the necessary imports
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_management/ctrl/state/article_list.dart';
import 'package:loading_management/ctrl/stub/stub.dart';

final authControllerProvider =
    AsyncNotifierProvider.autoDispose<ArticleListController, ArticleList>(
        ArticleListController.new);

class ArticleListController extends AutoDisposeAsyncNotifier<ArticleList> {
  @override
  FutureOr<ArticleList> build() {
    return getData();
  }

  Future<ArticleList> getData() async {
    final articleList = await Future.delayed(const Duration(seconds: 3))
        .then((value) => stubInitArticleList);

    return ArticleList(count: articleList.length, articleList: articleList);
  }

  Future<void> readMore() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        () async => await Future.delayed(const Duration(seconds: 2)).then(
              (value) => ArticleList(
                  count: stubAddArticleList.length,
                  articleList: [...stubInitArticleList, ...stubAddArticleList]),
            ));
  }
}
