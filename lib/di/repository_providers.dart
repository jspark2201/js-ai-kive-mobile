import 'package:aikivemobile/data/repositories/mock_community_repository_impl.dart';
import 'package:aikivemobile/domain/repositories/community_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_providers.g.dart';

@riverpod
CommunityRepository communityRepository(ref) {
  // final apiService = ref.watch(communityApiServiceProvider);
  // return CommunityRepositoryImpl(apiService);
  return MockCommunityRepositoryImpl();
}
