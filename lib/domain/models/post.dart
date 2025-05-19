import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.g.dart';
part 'post.freezed.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    required String id,
    required String profileImageUrl,
    required String nickname,
    required String timeAgo,
    required String postImageUrl,
    required String badge,
    required String title,
    required String content,
    required int views,
    required int comments,
    required int likeCount,
    required int dislikeCount,
    required bool isBookmarked,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
