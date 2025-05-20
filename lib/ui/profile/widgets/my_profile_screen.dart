import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyProfileScreen extends ConsumerStatefulWidget {
  const MyProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyProfileScreenState();
}

class _MyProfileScreenState extends ConsumerState<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 180,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF7F7CFF), Color(0xFF232C36)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.add, color: Colors.white54, size: 32),
                        const SizedBox(height: 4),
                        const Text(
                          '배경 이미지 업로드',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          '콘텐츠를 업로드하고 매력적인 커버의 제안을 받아보세요',
                          style: TextStyle(color: Colors.white54, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 12),
                      Center(
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.blueGrey,
                          child: const Text(
                            'js',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12), // 프로필 원 높이의 절반만큼 여백
                      const Text(
                        'jspark2201',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF7FBBFF),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 8,
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.edit, size: 18),
                            label: const Text('프로필 편집'),
                          ),
                          const SizedBox(width: 12),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF232C36),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 8,
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.share, size: 18),
                            label: const Text('공유하기'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      // 탭바
                      const TabBar(
                        indicatorColor: Color(0xFF7FBBFF),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white38,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        tabs: [
                          Tab(text: '내 콘텐츠'),
                          Tab(text: '작성한 글'),
                          Tab(text: '북마크'),
                          Tab(text: '정보'),
                        ],
                      ),
                      const Divider(height: 1, color: Color(0xFF232C36)),
                      SizedBox(
                        height: 520,
                        child: TabBarView(
                          children: [
                            // 1. 내 콘텐츠
                            Column(
                              children: [
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _ProfileFilterButton(
                                      label: '전체',
                                      selected: true,
                                    ),
                                    _ProfileFilterButton(label: 'AI 이미지'),
                                    _ProfileFilterButton(label: 'AI 비디오'),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                const Text(
                                  '아직 등록한 이미지가 없어요!',
                                  style: TextStyle(color: Colors.white54),
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF232C36),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text('다른 아티스트들의 이미지 둘러보기 >'),
                                ),
                              ],
                            ),
                            // 2. 작성한 글
                            Column(
                              children: [
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _ProfileFilterButton(
                                      label: '작성완료',
                                      selected: true,
                                    ),
                                    _ProfileFilterButton(label: '임시저장'),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                const Text(
                                  '작성한 글이 없습니다.',
                                  style: TextStyle(color: Colors.white54),
                                ),
                              ],
                            ),
                            // 3. 북마크
                            Column(
                              children: [
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _ProfileFilterButton(
                                      label: 'AI Tools',
                                      selected: true,
                                    ),
                                    _ProfileFilterButton(label: 'AI Community'),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                const Text(
                                  '북마크한 항목이 없습니다.',
                                  style: TextStyle(color: Colors.white54),
                                ),
                              ],
                            ),
                            // 4. 정보
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 24),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '팔로워',
                                            style: TextStyle(
                                              color: Colors.white54,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            '0',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '팔로잉',
                                            style: TextStyle(
                                              color: Colors.white54,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            '0',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 32),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                    ),
                                    child: Text(
                                      'AI Tools',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 8,
                                    ),
                                    child: Text(
                                      '사용하는 AI Tools를 설정해 주세요.',
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                  ),
                                  const Divider(color: Color(0xFF232C36)),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                    ),
                                    child: Text(
                                      '상세 이력',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 8,
                                    ),
                                    child: Text(
                                      '본인의 이력을 상세히 적어보세요.',
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                  ),
                                  const Divider(color: Color(0xFF232C36)),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                    ),
                                    child: Text(
                                      'SNS',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 8,
                                    ),
                                    child: Text(
                                      'SNS 계정을 등록해보세요.',
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileFilterButton extends StatelessWidget {
  final String label;
  final bool selected;
  const _ProfileFilterButton({required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor:
              selected ? const Color(0xFF7FBBFF) : Colors.transparent,
          side: BorderSide(
            color: selected ? const Color(0xFF7FBBFF) : Colors.white24,
          ),
          foregroundColor: selected ? Colors.white : Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(
            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
