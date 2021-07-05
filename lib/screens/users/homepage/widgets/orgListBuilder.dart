import 'package:finger_tips/screens/users/homepage/widgets/orgListTile.dart';
import 'package:flutter/material.dart';

class OrgListBuilder extends StatelessWidget {
  final userHomepageViewModel;
  const OrgListBuilder({this.userHomepageViewModel});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: userHomepageViewModel.organization.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) {
        return OrgListTile(
          leading: userHomepageViewModel.organization[index].photoUrl,
          title: userHomepageViewModel.organization[index].name,
          trailling: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 12,
          ),
          cover: userHomepageViewModel.organization[index].coverPhotoUrl,
          subtitle: userHomepageViewModel.organization[index].tagLine,
          address: userHomepageViewModel.organization[index].address,
          phoneNumber: userHomepageViewModel.organization[index].phoneNumber,
          email: userHomepageViewModel.organization[index].email,
        );
      },
    );
  }
}
