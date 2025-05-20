import 'package:aikivemobile/data/models/post_api_model.dart';

abstract class CommunityService {
  Future<List<PostApiModel>> getPosts();
}

class CommunityServiceImpl extends CommunityService {
  @override
  Future<List<PostApiModel>> getPosts() async {
    /// TODO : api 호출
    return [];
  }
}
