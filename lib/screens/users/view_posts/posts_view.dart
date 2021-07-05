import 'package:finger_tips/screens/users/view_posts/posts_viewmodel.dart';
import 'package:finger_tips/screens/users/view_posts/widgets/posts_body.dart';
import 'package:finger_tips/screens/view.dart';
import 'package:flutter/material.dart';

class PostsView extends StatelessWidget {
  final String email;
  final String title;

  const PostsView({Key key, this.email, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: PostsViewModel(email),
      builder: (_, postsViewModel, __) {
        return PostsBody(
          postsViewModel: postsViewModel,
          title: title,
        );
      },
    );
  }
}
