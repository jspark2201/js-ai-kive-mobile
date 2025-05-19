import 'package:aikivemobile/domain/models/post.dart';

abstract class CommunityRepository {
  Future<List<Post>> getPosts();
}
