import 'package:flutter/material.dart';

class CommunityPostItem extends StatelessWidget {
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

  const CommunityPostItem({
    super.key,
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
    this.isBookmarked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF232C36),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF3A4A5A), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top: Profile, Nickname, Time, Bookmark
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profileImageUrl),
                radius: 18,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nickname,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      timeAgo,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                color: Colors.white.withOpacity(0.7),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Post Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              postImageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          // Badge & Title
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFF2D9CDB),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  badge,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Content
          Text(
            content,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          // Bottom: Views, Comments, Reactions
          Row(
            children: [
              Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.white.withOpacity(0.5),
                size: 18,
              ),
              const SizedBox(width: 4),
              Text(
                '$views',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 13,
                ),
              ),
              const SizedBox(width: 16),
              Icon(
                Icons.mode_comment_outlined,
                color: Colors.white.withOpacity(0.5),
                size: 18,
              ),
              const SizedBox(width: 4),
              Text(
                '$comments',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 13,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  const Text('😊', style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 2),
                  Text(
                    '$likeCount',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text('😮', style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 2),
                  Text(
                    '$dislikeCount',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
