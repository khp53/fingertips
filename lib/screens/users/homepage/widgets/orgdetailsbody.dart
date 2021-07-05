import 'package:finger_tips/screens/users/view_posts/posts_view.dart';
import 'package:flutter/material.dart';

class OrgDetailsBody extends StatelessWidget {
  final String title;
  final String subtitle;
  final String photoUrl;
  final String coverPhotoUrl;
  final String address;
  final String phoneNumber;
  final String email;

  const OrgDetailsBody(
      {this.title,
      this.subtitle,
      this.photoUrl,
      this.coverPhotoUrl,
      this.address,
      this.phoneNumber,
      this.email});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopSection(context),
            SizedBox(
              height: 25,
            ),
            Text(
              'Address: $address',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Phone: $phoneNumber',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Want to Donate?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            _buildMiddleSection(),
            PostsView(
              email: email,
              title: title,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMiddleSection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            elevation: 0,
            onPressed: () {},
            color: Colors.blue,
            child: Text(
              'DONATE MONEY',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            elevation: 0,
            onPressed: () {},
            color: Colors.green,
            child: Text(
              'CONTACT US FOR MORE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: ClipOval(
            child: Image.network(
              photoUrl,
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        )
      ],
    );
  }
}
