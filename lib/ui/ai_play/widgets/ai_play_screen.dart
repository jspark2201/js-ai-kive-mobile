import 'package:aikivemobile/ui/core/widgets/ai_kive_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiPlayScreen extends ConsumerStatefulWidget {
  static const path = '/ai-play';
  const AiPlayScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AiPlayScreenState();
}

class _AiPlayScreenState extends ConsumerState<AiPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AiKiveAppBar(title: 'AI 플레이'),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: const [
          _ContestBannerSection(),
          SizedBox(height: 24),
          _AiCinemaSection(),
          SizedBox(height: 24),
          _Best10Section(),
          SizedBox(height: 24),
          _PopularArtistsSection(),
          SizedBox(height: 24),
          _AiVideosSection(),
        ],
      ),
    );
  }
}

// 1. 공모전 배너
class _ContestBannerSection extends StatelessWidget {
  const _ContestBannerSection();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24,
              right: 24,
              bottom: 60,
              child: Text(
                '매경미디어그룹 AI 영상광고 · 숏폼 공모전',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  shadows: [Shadow(color: Colors.black, blurRadius: 8)],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFCB5A2D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 10,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    '공모전 자세히 보기',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 2. AI Cinema (가로 스크롤)
class _AiCinemaSection extends StatelessWidget {
  const _AiCinemaSection();
  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': 'MAN kind',
      },
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': 'The Life of Toilet Paper',
      },
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': 'POEM OF DOOM',
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: const [
              Text(
                'AI Cinema 🏆',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Text(
                '더보기 >',
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: items.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, idx) {
              final item = items[idx];
              return ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: 130,
                  color: Colors.black12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        item['img'] as String,
                        height: 160,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item['title'] as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// 3. 이번 주 BEST 10 (2열 랭킹)
class _Best10Section extends StatelessWidget {
  const _Best10Section();
  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': '초보 운전',
        'rank': 1,
        'user': 'PinkDolphin',
        'isNew': true,
      },
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': '너의 시간을 찾아서',
        'rank': 2,
        'user': 'BXB',
        'isNew': false,
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Text(
            '이번 주 BEST 10',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children:
              items.map((item) {
                return Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF232C36),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            item['img'] as String,
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        if (item['isNew'] == true)
                          Positioned(
                            left: 8,
                            top: 8,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange,
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
                          left: 8,
                          bottom: 8,
                          child: Text(
                            '${item['rank']}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: Text(
                            item['user'] as String,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}

// 4. 인기 AI 아티스트 (가로 스크롤)
class _PopularArtistsSection extends StatelessWidget {
  const _PopularArtistsSection();
  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'img': 'https://randomuser.me/api/portraits/men/1.jpg',
        'name': '권한술감독',
        'isCrown': true,
      },
      {
        'img': 'https://randomuser.me/api/portraits/men/1.jpg',
        'name': 'aubebijou',
        'isCrown': true,
      },
      {
        'img': 'https://randomuser.me/api/portraits/men/1.jpg',
        'name': '밴디트',
        'isCrown': false,
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Text(
            '인기 AI 아티스트 ✨',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: items.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, idx) {
              final item = items[idx];
              return Container(
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF232C36), Color(0xFFCB5A2D)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(item['img'] as String),
                      radius: 20,
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item['name'] as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        if (item['isCrown'] == true)
                          const Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: Icon(
                              Icons.emoji_events,
                              color: Colors.amber,
                              size: 16,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// 5. AI Videos (2열 그리드)
class _AiVideosSection extends StatelessWidget {
  const _AiVideosSection();
  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': 'Zesla AI 로봇 출시!!',
        'user': 'PinkDolphin',
        'isNew': true,
      },
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': 'All in one place.AI-Kive',
        'user': 'BXB',
        'isNew': true,
      },
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': '도르보리 - dorbori',
        'user': 'ruaverse',
        'isNew': true,
      },
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': '도시의 밝은 조용해',
        'user': '이중엽PD',
        'isNew': true,
      },
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': '초보 운전',
        'user': 'PinkDolphin',
        'isNew': true,
      },
      {
        'img': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'title': 'The Oracle 2화 그녀가 본 미래',
        'user': 'PinkDolphin',
        'isNew': true,
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: const [
              Text(
                'AI Videos',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Text(
                '더보기 >',
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, idx) {
            final item = items[idx];
            return Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          item['img'] as String,
                          height: 100,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (item['isNew'] == true)
                        Positioned(
                          left: 8,
                          top: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orange,
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'] as String,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          item['user'] as String,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
