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
    return const Scaffold(body: Text('AiPlayScreen'));
  }
}
