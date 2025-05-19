import 'package:aikivemobile/ui/ai_community/widgets/ai_communitiy_screen.dart';
import 'package:aikivemobile/ui/ai_play/widgets/ai_play_screen.dart';
import 'package:aikivemobile/ui/ai_tools/widgets/ai_tools_screen.dart';
import 'package:aikivemobile/ui/ai_tube/widgets/ai_tube_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingScreen extends ConsumerStatefulWidget {
  static const path = '/landing';
  const LandingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingScreenState();
}

class _LandingScreenState extends ConsumerState<LandingScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    AiCommunityScreen(),
    AiToolsScreen(),
    AiTubeScreen(),
    AiPlayScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: '커뮤니티'),
          BottomNavigationBarItem(
            icon: Icon(Icons.build_circle_outlined),
            label: '툴',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_fill_outlined),
            label: '튜브',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: '플레이'),
        ],
      ),
    );
  }
}
