import 'package:finger_tips/screens/users/homepage/widgets/orgdetailappbar.dart';
import 'package:finger_tips/screens/users/homepage/widgets/orgdetailsbody.dart';
import 'package:flutter/material.dart';

class OrganizationDetailsView extends StatelessWidget {
  final String title;
  final String address;
  final String coverPhotoUrl;
  final String photoUrl;
  final String tagLine;
  final String phoneNumber;
  final String email;

  const OrganizationDetailsView(
      {this.title,
      this.address,
      this.coverPhotoUrl,
      this.photoUrl,
      this.tagLine,
      this.phoneNumber,
      this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              OrgDetailsAppBar(
                title: title,
                coverPhotoUrl: coverPhotoUrl,
              )
            ];
          },
          body: OrgDetailsBody(
            address: address,
            title: title,
            photoUrl: photoUrl,
            subtitle: tagLine,
            phoneNumber: phoneNumber,
            email: email,
          )),
    );
  }
}
