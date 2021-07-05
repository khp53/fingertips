import 'package:finger_tips/models/posts.dart';

abstract class PostsService {
  Future<List<Posts>> getOrganizationPosts(String email);
}
