import 'package:finger_tips/screens/users/view_posts/widgets/posts_tile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PostsBody extends StatelessWidget {
  final postsViewModel;
  final String title;
  PostsBody({this.postsViewModel, this.title});
  var _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      shrinkWrap: true,
      itemCount: postsViewModel.posts == null ? 0 : postsViewModel.posts.length,
      itemBuilder: (builder, index) {
        return PostsTile(
          postsBody: postsViewModel.posts[index].postBody,
          postsPhoto: postsViewModel.posts[index].postPhoto,
          title: title,
        );
      },
    );
  }
}
