// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Post _$PostFromJson(Map<String, dynamic> json) => _Post(
  id: json['id'] as String,
  profileImageUrl: json['profileImageUrl'] as String,
  nickname: json['nickname'] as String,
  timeAgo: json['timeAgo'] as String,
  postImageUrl: json['postImageUrl'] as String,
  badge: json['badge'] as String,
  title: json['title'] as String,
  content: json['content'] as String,
  views: (json['views'] as num).toInt(),
  comments: (json['comments'] as num).toInt(),
  likeCount: (json['likeCount'] as num).toInt(),
  dislikeCount: (json['dislikeCount'] as num).toInt(),
  isBookmarked: json['isBookmarked'] as bool,
);

Map<String, dynamic> _$PostToJson(_Post instance) => <String, dynamic>{
  'id': instance.id,
  'profileImageUrl': instance.profileImageUrl,
  'nickname': instance.nickname,
  'timeAgo': instance.timeAgo,
  'postImageUrl': instance.postImageUrl,
  'badge': instance.badge,
  'title': instance.title,
  'content': instance.content,
  'views': instance.views,
  'comments': instance.comments,
  'likeCount': instance.likeCount,
  'dislikeCount': instance.dislikeCount,
  'isBookmarked': instance.isBookmarked,
};
