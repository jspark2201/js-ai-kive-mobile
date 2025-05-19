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
    return const Scaffold(body: Text('AiCommunityScreen'));
  }
}
