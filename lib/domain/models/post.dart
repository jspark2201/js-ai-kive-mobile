class Post {
  final String profileImageUrl;
  final String nickname;
  final String timeAgo;
  final String postImageUrl;
  final String badge;
  final String title;
  final String content;
  final int views;
  final int comments;
  final int likeCount;
  final int dislikeCount;
  final bool isBookmarked;
  Post({
    required this.profileImageUrl,
    required this.nickname,
    required this.timeAgo,
    required this.postImageUrl,
    required this.badge,
    required this.title,
    required this.content,
    required this.views,
    required this.comments,
    required this.likeCount,
    required this.dislikeCount,
    required this.isBookmarked,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      profileImageUrl: json['profileImageUrl'],
      nickname: json['nickname'],
      timeAgo: json['timeAgo'],
      postImageUrl: json['postImageUrl'],
      badge: json['badge'],
      title: json['title'],
      content: json['content'],
      views: json['views'],
      comments: json['comments'],
      likeCount: json['likeCount'],
      dislikeCount: json['dislikeCount'],
      isBookmarked: json['isBookmarked'],
    );
  }
}
