// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArticleList {
  int get count => throw _privateConstructorUsedError;
  List<Article> get articleList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleListCopyWith<ArticleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListCopyWith<$Res> {
  factory $ArticleListCopyWith(
          ArticleList value, $Res Function(ArticleList) then) =
      _$ArticleListCopyWithImpl<$Res, ArticleList>;
  @useResult
  $Res call({int count, List<Article> articleList});
}

/// @nodoc
class _$ArticleListCopyWithImpl<$Res, $Val extends ArticleList>
    implements $ArticleListCopyWith<$Res> {
  _$ArticleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? articleList = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      articleList: null == articleList
          ? _value.articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleListImplCopyWith<$Res>
    implements $ArticleListCopyWith<$Res> {
  factory _$$ArticleListImplCopyWith(
          _$ArticleListImpl value, $Res Function(_$ArticleListImpl) then) =
      __$$ArticleListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<Article> articleList});
}

/// @nodoc
class __$$ArticleListImplCopyWithImpl<$Res>
    extends _$ArticleListCopyWithImpl<$Res, _$ArticleListImpl>
    implements _$$ArticleListImplCopyWith<$Res> {
  __$$ArticleListImplCopyWithImpl(
      _$ArticleListImpl _value, $Res Function(_$ArticleListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? articleList = null,
  }) {
    return _then(_$ArticleListImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      articleList: null == articleList
          ? _value._articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$ArticleListImpl implements _ArticleList {
  _$ArticleListImpl(
      {required this.count, required final List<Article> articleList})
      : _articleList = articleList;

  @override
  final int count;
  final List<Article> _articleList;
  @override
  List<Article> get articleList {
    if (_articleList is EqualUnmodifiableListView) return _articleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articleList);
  }

  @override
  String toString() {
    return 'ArticleList(count: $count, articleList: $articleList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleListImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._articleList, _articleList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_articleList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleListImplCopyWith<_$ArticleListImpl> get copyWith =>
      __$$ArticleListImplCopyWithImpl<_$ArticleListImpl>(this, _$identity);
}

abstract class _ArticleList implements ArticleList {
  factory _ArticleList(
      {required final int count,
      required final List<Article> articleList}) = _$ArticleListImpl;

  @override
  int get count;
  @override
  List<Article> get articleList;
  @override
  @JsonKey(ignore: true)
  _$$ArticleListImplCopyWith<_$ArticleListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
