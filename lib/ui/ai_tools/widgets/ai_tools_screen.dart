import 'package:aikivemobile/ui/core/widgets/ai_kive_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiToolsScreen extends ConsumerStatefulWidget {
  const AiToolsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AiToolsScreenState();
}

class _AiToolsScreenState extends ConsumerState<AiToolsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AiKiveAppBar(title: 'AI 툴'));
  }
}
