import 'package:finger_tips/app/dependencies.dart';
import 'package:finger_tips/models/organization.dart';
import 'package:finger_tips/models/posts.dart';
import 'package:finger_tips/screens/viewmodel.dart';
import 'package:finger_tips/services/posts/posts_service.dart';

class PostsViewModel extends Viewmodel {
  PostsViewModel(email) {
    listAllPosts(email);
  }
  PostsService get service => dependency();
  //Posts _posts = new Posts();
  //get postss => _posts;
  //set postss(value) => _posts = value;
  List<Posts> posts;

  // get email => _posts.email;
  // set email(value) {
  //   turnBusy();
  //   _posts.email = value;
  //   turnIdle();
  // }

  void listAllPosts(String email) {
    print("view model: $email");
    turnBusy();
    update(() async => posts = await service.getOrganizationPosts(email));
    turnIdle();
  }
}
