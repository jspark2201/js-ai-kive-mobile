// lib/ui/ai_community/view_models/community_view_model.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../di/repository_providers.dart';
import '../widgets/community_post_item.dart';
import 'package:aikivemobile/domain/models/post.dart';

part 'community_view_model.g.dart';

class CommunityState {
  final List<String> tabs;
  final int selectedTab;
  final List<String> sortOptions;
  final String selectedSort;
  final List<Post> posts;
  final bool isLoading;
  final String? error;

  CommunityState({
    required this.tabs,
    required this.selectedTab,
    required this.sortOptions,
    required this.selectedSort,
    required this.posts,
    this.isLoading = false,
    this.error,
  });

  CommunityState copyWith({
    List<String>? tabs,
    int? selectedTab,
    List<String>? sortOptions,
    String? selectedSort,
    List<Post>? posts,
    bool? isLoading,
    String? error,
  }) {
    return CommunityState(
      tabs: tabs ?? this.tabs,
      selectedTab: selectedTab ?? this.selectedTab,
      sortOptions: sortOptions ?? this.sortOptions,
      selectedSort: selectedSort ?? this.selectedSort,
      posts: posts ?? this.posts,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

@riverpod
class CommunityViewModel extends _$CommunityViewModel {
  @override
  CommunityState build() {
    return CommunityState(
      tabs: ['자유게시판', '매거진', 'AI 테크 리포트', 'Q&A', 'AI 갤러리', '공지사항'],
      selectedTab: 0,
      sortOptions: ['최신순', '인기순'],
      selectedSort: '최신순',
      posts: [],
      isLoading: false,
      error: null,
    );
  }

  Future<void> fetchPosts() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final repo = ref.read(communityRepositoryProvider);
      final List<Post> posts = await repo.getPosts();
      await Future.delayed(Duration(seconds: 3));
      state = state.copyWith(posts: posts, isLoading: false, error: null);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void selectTab(int idx) {
    state = state.copyWith(selectedTab: idx);
    // 필요시 탭에 따라 fetchPosts() 호출 가능
  }

  void selectSort(String sort) {
    state = state.copyWith(selectedSort: sort);
    // 필요시 정렬에 따라 fetchPosts() 호출 가능
  }

  void incrementViewCount(int index) {
    final post = state.posts[index];
    final updated = Post(
      id: post.id,
      profileImageUrl: post.profileImageUrl,
      nickname: post.nickname,
      timeAgo: post.timeAgo,
      postImageUrl: post.postImageUrl,
      badge: post.badge,
      title: post.title,
      content: post.content,
      views: post.views + 1,
      comments: post.comments,
      likeCount: post.likeCount,
      dislikeCount: post.dislikeCount,
      isBookmarked: post.isBookmarked,
    );
    final newPosts = [...state.posts];
    newPosts[index] = updated;
    state = state.copyWith(posts: newPosts);
  }

  void toggleBookmark(int index) {
    final post = state.posts[index];
    final updated = Post(
      id: post.id,
      profileImageUrl: post.profileImageUrl,
      nickname: post.nickname,
      timeAgo: post.timeAgo,
      postImageUrl: post.postImageUrl,
      badge: post.badge,
      title: post.title,
      content: post.content,
      views: post.views,
      comments: post.comments,
      likeCount: post.likeCount,
      dislikeCount: post.dislikeCount,
      isBookmarked: !post.isBookmarked,
    );
    final newPosts = [...state.posts];
    newPosts[index] = updated;
    state = state.copyWith(posts: newPosts);
  }
}
