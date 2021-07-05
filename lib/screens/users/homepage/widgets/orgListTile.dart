import 'package:finger_tips/screens/users/homepage/organizationdetails_view.dart';
import 'package:finger_tips/screens/users/view_posts/posts_viewmodel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrgListTile extends StatelessWidget {
  final leading;
  final trailling;
  final title;
  final cover;
  final subtitle;
  final address;
  final phoneNumber;
  final email;

  OrgListTile(
      {@required this.leading,
      @required this.trailling,
      @required this.title,
      @required this.cover,
      @required this.subtitle,
      @required this.address,
      @required this.phoneNumber,
      @required this.email});

  //PostsViewModel _viewModel = PostsViewModel();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //_viewModel.listAllPosts(email);
        //print("set email: ${_viewModel.email}");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => OrganizationDetailsView(
                      title: title,
                      coverPhotoUrl: cover,
                      address: address,
                      photoUrl: leading,
                      tagLine: subtitle,
                      phoneNumber: phoneNumber,
                      email: email,
                    )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 7, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                        '$leading',
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 8, child: Text('$title')),
                Expanded(flex: 1, child: trailling),
              ],
            ),
          ),
          Image(
            image: NetworkImage('$cover'),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              padding: EdgeInsets.only(left: 10), child: Text('$subtitle')),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
