import 'package:aikivemobile/ui/ai_community/view_models/community_view_model.dart';
import 'package:aikivemobile/ui/core/widgets/ai_kive_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    final state = ref.watch(communityViewModelProvider);

    return Scaffold(
      appBar: AiKiveAppBar(title: '커뮤니티'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 8,
              right: 8,
              bottom: 4,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(state.tabs.length, (idx) {
                  final isSelected = state.selectedTab == idx;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: GestureDetector(
                      onTap: () {
                        ref
                            .read(communityViewModelProvider.notifier)
                            .selectTab(idx);
                      },
                      child: Row(
                        children: [
                          Text(
                            state.tabs[idx],
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.white38,
                              fontWeight:
                                  isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          if (state.tabs[idx] == '공지사항')
                            const Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Icon(
                                Icons.campaign,
                                color: Colors.red,
                                size: 16,
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          const Divider(height: 1, color: Color(0xFF232C36)),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.posts.length + 1, // +1 for dropdown
              itemBuilder: (context, index) {
                if (index == 0) {
                  // 드롭다운 우측 정렬
                  return Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    margin: const EdgeInsets.only(top: 8, right: 8, bottom: 8),
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF232C36),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: state.selectedSort,
                          dropdownColor: const Color(0xFF232C36),
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          onChanged: (v) {
                            ref
                                .read(communityViewModelProvider.notifier)
                                .selectSort(v!);
                          },
                          items:
                              state.sortOptions
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                    ),
                  );
                }
                // 게시글 아이템
                return state.posts[index - 1];
              },
            ),
          ),
        ],
      ),
    );
  }
}
