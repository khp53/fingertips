import 'package:finger_tips/screens/auth/auth_viewmodel.dart';
import 'package:finger_tips/screens/auth/login/loginscreen_view.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);

  final AuthViewmodel authViewmodel;
  final user;
  const Appbar({this.authViewmodel, this.user});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Homepage'),
      actions: [
        IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              authViewmodel.user = null;
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => LoginScreenView()));
            }),
        CircleAvatar(
          radius: 15,
          child: ClipOval(
            child: Image.network(
              user.photoUrl,
            ),
          ),
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
