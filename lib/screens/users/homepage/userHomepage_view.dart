import 'package:finger_tips/screens/users/homepage/userHomepage_viewmodel.dart';
import 'package:finger_tips/screens/users/homepage/widgets/appbar.dart';
import 'package:finger_tips/screens/users/homepage/widgets/orgListBuilder.dart';
import 'package:finger_tips/screens/auth/auth_viewmodel.dart';
import 'package:finger_tips/screens/users/view_posts/posts_viewmodel.dart';
import 'package:finger_tips/screens/view.dart';
import 'package:flutter/material.dart';

class UserHomepage extends StatelessWidget {
  final user;

  const UserHomepage({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: AuthViewmodel(),
      builder: (_, authViewModel, __) {
        return Scaffold(
          appBar: Appbar(
            authViewmodel: authViewModel,
            user: user,
          ),
          body: View(
            viewmodel: UserHomepageViewModel(),
            builder: (_, userHomepageViewModel, __) {
              return OrgListBuilder(
                  userHomepageViewModel: userHomepageViewModel);
            },
          ),
        );
      },
    );
  }
}
