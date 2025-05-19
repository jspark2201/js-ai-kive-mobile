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
    return const Scaffold(
      appBar: AiKiveAppBar(title: 'AI 튜브'),
      body: Text('AiTubeScreen'),
    );
  }
}
