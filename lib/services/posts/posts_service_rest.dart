import 'package:finger_tips/app/dependencies.dart';
import 'package:finger_tips/models/posts.dart';
import 'package:finger_tips/services/posts/posts_service.dart';
import 'package:finger_tips/services/rest_services.dart';

class PostsServiceRest implements PostsService {
  RestService get rest => dependency();
  @override
  Future<List<Posts>> getOrganizationPosts(String email) async {
    print("rest: $email");
    final List listJson = await rest.get('posts?email=$email');
    if (listJson == null || listJson.length == 0) return null;

    return listJson.map((e) => Posts.fromJson(e)).toList();
  }
}
