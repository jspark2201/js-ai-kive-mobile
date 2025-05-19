import 'package:aikivemobile/ui/core/widgets/ai_kive_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aikivemobile/ui/ai_community/widgets/community_post_item.dart';

class AiCommunityScreen extends ConsumerStatefulWidget {
  static const path = '/ai-community';
  const AiCommunityScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AiCommunityScreenState();
}

class _AiCommunityScreenState extends ConsumerState<AiCommunityScreen> {
  @override
  Widget build(BuildContext context) {
    final samplePosts = [
      CommunityPostItem(
        profileImageUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
        nickname: '왈왈왈',
        timeAgo: '3시간 전',
        postImageUrl:
            'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        badge: 'BEST',
        title: '어제 바다로 놀러갔다가 연예인 만났어요!',
        content:
            '두 분이 인스타그램에 올리실 쇼츠 촬영하고 계시더라구요 셀카 찍어달라고 하니 찍어주셨어요 다들 너무 친절하시고 좋았어요',
        views: 9,
        comments: 3,
        likeCount: 2,
        dislikeCount: 0,
        isBookmarked: false,
      ),
      CommunityPostItem(
        profileImageUrl: 'https://randomuser.me/api/portraits/women/2.jpg',
        nickname: '코딩하는펭귄',
        timeAgo: '1시간 전',
        postImageUrl:
            'https://images.unsplash.com/photo-1465101046530-73398c7f28ca',
        badge: 'NEW',
        title: 'AI로 만든 그림 공유해요',
        content: '최근에 AI로 만든 그림인데, 피드백 부탁드려요!',
        views: 15,
        comments: 5,
        likeCount: 5,
        dislikeCount: 1,
        isBookmarked: true,
      ),
    ];
    return Scaffold(
      appBar: const AiKiveAppBar(title: '커뮤니티'),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemCount: samplePosts.length,
        itemBuilder: (context, index) => samplePosts[index],
      ),
    );
  }
}
