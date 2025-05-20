import 'package:aikivemobile/ui/core/widgets/ai_kive_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiTubeScreen extends ConsumerStatefulWidget {
  static const path = '/ai-tube';
  const AiTubeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AiTubeScreenState();
}

class _AiTubeScreenState extends ConsumerState<AiTubeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const AiKiveAppBar(title: 'AI 튜브'),
        body: Column(
          children: [
            // 검색창
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    width: 1.5,
                    color: const Color(0xFF7F7CFF),
                  ),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF7F7CFF), Color(0xFF5CE1E6)],
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Icon(Icons.search, color: Colors.white70),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '찾으시는 AI 서비스를 검색해 주세요.',
                          hintStyle: TextStyle(color: Colors.white54),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white54),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ),
            // TabBar
            const TabBar(
              indicatorColor: Color(0xFF7FBBFF),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white38,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              tabs: [Tab(text: '국내'), Tab(text: '해외')],
            ),
            const Divider(height: 1, color: Color(0xFF232C36)),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  // 국내 탭
                  _TubeTabContent(isKorean: true),
                  // 해외 탭
                  _TubeTabContent(isKorean: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TubeTabContent extends StatelessWidget {
  final bool isKorean;
  const _TubeTabContent({required this.isKorean});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
      children: [
        // Best 영상 섹션
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            isKorean ? '🔥 Best 영상' : '🔥 Best Videos',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _BestVideoCard(
                title:
                    isKorean
                        ? 'AI 한국어 수준 실화냐? 구글 NotebookLM 미친 업데이트!'
                        : 'Google NotebookLM Update! English Content Now Supported',
                subtitle:
                    isKorean
                        ? 'AI 코리아 커뮤니티 | 25.04.30'
                        : 'AI Korea Community | 2024.04.30',
                imageUrl:
                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                isNew: true,
              ),
              const SizedBox(width: 12),
              _BestVideoCard(
                title:
                    isKorean
                        ? '단 2주 만에 쇼츠 1개 조회수 역대급 방법 공개'
                        : '2 Weeks, 1 Short: How to Get Millions of Views',
                subtitle: isKorean ? '시대니 | 25.04.20' : 'Sidney | 2024.04.20',
                imageUrl:
                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                isNew: false,
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        // AI 유튜브 영상 섹션
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            isKorean ? '👨‍💻 국내 AI 유튜브 영상' : '🌎 Global AI YouTube Videos',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 8),
        // 유튜브 영상 리스트 (샘플)
        _AiYoutubeSection(isKorean: isKorean),
      ],
    );
  }
}

class _BestVideoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final bool isNew;
  const _BestVideoCard({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration: BoxDecoration(
        color: const Color(0xFF232C36),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF3A4A5A), width: 1),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            child: Image.network(
              imageUrl,
              height: 220,
              width: 220,
              fit: BoxFit.cover,
            ),
          ),
          if (isNew)
            Positioned(
              left: 8,
              top: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'NEW',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AiYoutubeSection extends StatelessWidget {
  final bool isKorean;
  const _AiYoutubeSection({required this.isKorean});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                ),
                radius: 18,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isKorean ? '스튜디오 프리윌루전' : 'Studio Freewillusion',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      isKorean
                          ? '국내 최초의 AI 영상 프로덕션 (주)스튜디오프리윌루전입니다. 제1회 투바이 국제 AI 영상제 개최!'
                          : 'The first AI video production studio in Korea. 1st 2by International AI Video Festival!',
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 13,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 305,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _YoutubeVideoCard(
                title:
                    isKorean
                        ? '[AI 활용 광고] MINI | 재미를 혁신 | The New Excitement++'
                        : '[AI Ad] MINI | The New Excitement++',
                imageUrl:
                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                views: 1298,
                date: isKorean ? '25.04.21' : '2024.04.21',
                tags: isKorean ? ['미드저니', 'Midjourney'] : ['Midjourney'],
              ),
              const SizedBox(width: 12),
              _YoutubeVideoCard(
                title:
                    isKorean
                        ? '[현대자동차] INSTEROID | 현대리쇼 현대자동차관 4K'
                        : '[Hyundai] INSTEROID | Hyundai Motor Show 4K',
                imageUrl:
                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                views: 1492,
                date: isKorean ? '25.04.10' : '2024.04.10',
                tags: isKorean ? ['챗지피티', 'ChatGPT'] : ['ChatGPT'],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF232C36),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {},
              child: Text(isKorean ? '더 많은 영상 보러가기 >' : 'See more videos >'),
            ),
          ),
        ),
      ],
    );
  }
}

class _YoutubeVideoCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int views;
  final String date;
  final List<String> tags;
  const _YoutubeVideoCard({
    required this.title,
    required this.imageUrl,
    required this.views,
    required this.date,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 305,
      decoration: BoxDecoration(
        color: const Color(0xFF232C36),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF3A4A5A), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            child: Image.network(
              imageUrl,
              height: 150,
              width: 220,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white54,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$views',
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      date,
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  children:
                      tags
                          .map(
                            (tag) => Chip(
                              label: Text(
                                tag,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              backgroundColor: const Color(0xFF232C36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: const BorderSide(
                                  color: Color(0xFF3A4A5A),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
