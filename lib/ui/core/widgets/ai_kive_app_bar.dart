import 'package:flutter/material.dart';

class AiKiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onSearch;
  final Color? backgroundColor;
  final double elevation;
  final String title;
  const AiKiveAppBar({
    super.key,
    this.onSearch,
    this.backgroundColor,
    this.elevation = 0,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.black,
      elevation: elevation,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Row(
        children: [
          const SizedBox(width: 12),
          // 로고 아이콘
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [Color(0xFF7F7CFF), Color(0xFF5CE1E6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds);
            },
            child: const Icon(
              Icons.auto_awesome,
              size: 32,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            'AI-Kive',
            style: TextStyle(
              color: Color(0xFF7FBBFF),
              fontWeight: FontWeight.bold,
              fontSize: 22,
              letterSpacing: -1.5,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Spacer(),
          Container(
            height: 36,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF232C36),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.white70),
              onPressed: onSearch,
              splashRadius: 20,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
