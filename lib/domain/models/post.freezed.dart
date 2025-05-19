// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Post {

 String get id; String get profileImageUrl; String get nickname; String get timeAgo; String get postImageUrl; String get badge; String get title; String get content; int get views; int get comments; int get likeCount; int get dislikeCount; bool get isBookmarked;
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCopyWith<Post> get copyWith => _$PostCopyWithImpl<Post>(this as Post, _$identity);

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Post&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.timeAgo, timeAgo) || other.timeAgo == timeAgo)&&(identical(other.postImageUrl, postImageUrl) || other.postImageUrl == postImageUrl)&&(identical(other.badge, badge) || other.badge == badge)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.views, views) || other.views == views)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.dislikeCount, dislikeCount) || other.dislikeCount == dislikeCount)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImageUrl,nickname,timeAgo,postImageUrl,badge,title,content,views,comments,likeCount,dislikeCount,isBookmarked);

@override
String toString() {
  return 'Post(id: $id, profileImageUrl: $profileImageUrl, nickname: $nickname, timeAgo: $timeAgo, postImageUrl: $postImageUrl, badge: $badge, title: $title, content: $content, views: $views, comments: $comments, likeCount: $likeCount, dislikeCount: $dislikeCount, isBookmarked: $isBookmarked)';
}


}

/// @nodoc
abstract mixin class $PostCopyWith<$Res>  {
  factory $PostCopyWith(Post value, $Res Function(Post) _then) = _$PostCopyWithImpl;
@useResult
$Res call({
 String id, String profileImageUrl, String nickname, String timeAgo, String postImageUrl, String badge, String title, String content, int views, int comments, int likeCount, int dislikeCount, bool isBookmarked
});




}
/// @nodoc
class _$PostCopyWithImpl<$Res>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._self, this._then);

  final Post _self;
  final $Res Function(Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? profileImageUrl = null,Object? nickname = null,Object? timeAgo = null,Object? postImageUrl = null,Object? badge = null,Object? title = null,Object? content = null,Object? views = null,Object? comments = null,Object? likeCount = null,Object? dislikeCount = null,Object? isBookmarked = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,timeAgo: null == timeAgo ? _self.timeAgo : timeAgo // ignore: cast_nullable_to_non_nullable
as String,postImageUrl: null == postImageUrl ? _self.postImageUrl : postImageUrl // ignore: cast_nullable_to_non_nullable
as String,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,dislikeCount: null == dislikeCount ? _self.dislikeCount : dislikeCount // ignore: cast_nullable_to_non_nullable
as int,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Post implements Post {
  const _Post({required this.id, required this.profileImageUrl, required this.nickname, required this.timeAgo, required this.postImageUrl, required this.badge, required this.title, required this.content, required this.views, required this.comments, required this.likeCount, required this.dislikeCount, required this.isBookmarked});
  factory _Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

@override final  String id;
@override final  String profileImageUrl;
@override final  String nickname;
@override final  String timeAgo;
@override final  String postImageUrl;
@override final  String badge;
@override final  String title;
@override final  String content;
@override final  int views;
@override final  int comments;
@override final  int likeCount;
@override final  int dislikeCount;
@override final  bool isBookmarked;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCopyWith<_Post> get copyWith => __$PostCopyWithImpl<_Post>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Post&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.timeAgo, timeAgo) || other.timeAgo == timeAgo)&&(identical(other.postImageUrl, postImageUrl) || other.postImageUrl == postImageUrl)&&(identical(other.badge, badge) || other.badge == badge)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.views, views) || other.views == views)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.dislikeCount, dislikeCount) || other.dislikeCount == dislikeCount)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImageUrl,nickname,timeAgo,postImageUrl,badge,title,content,views,comments,likeCount,dislikeCount,isBookmarked);

@override
String toString() {
  return 'Post(id: $id, profileImageUrl: $profileImageUrl, nickname: $nickname, timeAgo: $timeAgo, postImageUrl: $postImageUrl, badge: $badge, title: $title, content: $content, views: $views, comments: $comments, likeCount: $likeCount, dislikeCount: $dislikeCount, isBookmarked: $isBookmarked)';
}


}

/// @nodoc
abstract mixin class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) _then) = __$PostCopyWithImpl;
@override @useResult
$Res call({
 String id, String profileImageUrl, String nickname, String timeAgo, String postImageUrl, String badge, String title, String content, int views, int comments, int likeCount, int dislikeCount, bool isBookmarked
});




}
/// @nodoc
class __$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(this._self, this._then);

  final _Post _self;
  final $Res Function(_Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? profileImageUrl = null,Object? nickname = null,Object? timeAgo = null,Object? postImageUrl = null,Object? badge = null,Object? title = null,Object? content = null,Object? views = null,Object? comments = null,Object? likeCount = null,Object? dislikeCount = null,Object? isBookmarked = null,}) {
  return _then(_Post(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,timeAgo: null == timeAgo ? _self.timeAgo : timeAgo // ignore: cast_nullable_to_non_nullable
as String,postImageUrl: null == postImageUrl ? _self.postImageUrl : postImageUrl // ignore: cast_nullable_to_non_nullable
as String,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,dislikeCount: null == dislikeCount ? _self.dislikeCount : dislikeCount // ignore: cast_nullable_to_non_nullable
as int,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
