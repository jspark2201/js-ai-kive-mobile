import 'package:aikivemobile/ui/core/widgets/ai_kive_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiToolsScreen extends ConsumerStatefulWidget {
  const AiToolsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AiToolsScreenState();
}

class _AiToolsScreenState extends ConsumerState<AiToolsScreen> {
  final List<String> categories = [
    '전체',
    '이미지',
    '비디오',
    '오디오',
    '디자인',
    '마케팅',
    '챗봇',
    '3D',
    '코딩',
    '글쓰기',
    '일상',
    '교육',
    '비즈니스',
    '생산성',
    '프롬프트',
    'AI 검사기',
    '기타',
  ];
  final Set<int> selectedIndexes = {0}; // '전체' 선택됨

  final List<Map<String, String>> tools = [
    {
      'img': 'https://cdn-icons-png.flaticon.com/512/5968/5968705.png',
      'title': '따능AI',
      'subtitle': 'warmtalent AI',
      'desc':
          '따능 AI는 한국어 기반 AI 아트 플랫폼으로, 사용자가 한글 프롬프트로 이미지 / 영상 / 음악 / 음향효과 / 음성합성을 한번에 제작할 수 있습니다.',
      'tags': '#무료체험 #AI 비디오 생성기',
    },
    {
      'img': 'https://cdn-icons-png.flaticon.com/512/5968/5968705.png',
      'title': 'VEO 2',
      'subtitle': '베오 2',
      'desc':
          'Veo는 Google DeepMind가 개발한 텍스트 기반 AI 비디오 생성 플랫폼으로, 사용자가 간단한 프롬프트만으로 시네마틱한 고화질 영상을 제작할 수 있습니다.',
      'tags': '#무료체험 #AI 비디오 생성기',
    },
    {
      'img': 'https://cdn-icons-png.flaticon.com/512/5968/5968705.png',
      'title': 'Topaz AI',
      'subtitle': '토파즈 AI',
      'desc':
          'Topaz AI는 Topaz Labs에서 개발한 AI 기반 이미지 및 비디오 향상 소프트웨어로, 업스케일링, 노이즈 제거, 선명도 향상 등 전문가 수준의 결과물을 제공합니다.',
      'tags': '#무료체험 #AI 비디오 생성기',
    },
    // ... 더 추가 가능
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AiKiveAppBar(title: 'AI 툴'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 상단 카테고리 버튼 리스트
          SizedBox(
            height: 48,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              itemCount: categories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, idx) {
                final selected = selectedIndexes.contains(idx);
                return OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor:
                        selected ? const Color(0xFF7FBBFF) : Colors.transparent,
                    side: BorderSide(
                      color:
                          selected ? const Color(0xFF7FBBFF) : Colors.white24,
                    ),
                    foregroundColor: selected ? Colors.white : Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (selected) {
                        selectedIndexes.remove(idx);
                      } else {
                        selectedIndexes.add(idx);
                      }
                    });
                  },
                  child: Text(
                    categories[idx],
                    style: TextStyle(
                      fontWeight:
                          selected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          // 하단 카드 리스트
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: tools.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, idx) {
                final tool = tools[idx];
                return Container(
                  height: MediaQuery.of(context).size.width - 32,
                  width: MediaQuery.of(context).size.width - 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFF232C36),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xFF3A4A5A),
                      width: 1,
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(tool['img']!),
                            radius: 20,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tool['title']!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  tool['subtitle']!,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        tool['desc']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      Text(
                        tool['tags']!,
                        style: const TextStyle(
                          color: Colors.cyan,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
