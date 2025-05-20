import 'package:aikivemobile/data/services/community_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_providers.g.dart';

@riverpod
CommunityService communityService(ref) {
  return CommunityServiceImpl();
}
