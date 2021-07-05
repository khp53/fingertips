import 'package:finger_tips/models/users.dart';
import 'package:finger_tips/screens/auth/login/loginscreen_view.dart';
import 'package:finger_tips/screens/auth/signup/signup_viewmodel.dart';
import 'package:finger_tips/screens/users/homepage/userHomepage_view.dart';
import 'package:finger_tips/screens/view.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  void _signup(BuildContext context, SignUpViewModel viewmodel) async {
    // await viewmodel.uploadImage();
    // await viewmodel.getDownloadUrl();
    final User _user = await viewmodel.register();
    if (_user != null) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (_) => UserHomepage(
                    user: _user,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          child: SingleChildScrollView(
            child: View(
              viewmodel: SignUpViewModel(),
              builder: (_, viewmodel, __) => Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildCoverImage(),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: _buildTextField(
                        hint: 'Full Name',
                        icon: Icons.people,
                        onChanged: (value) => viewmodel.name = value),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: _buildTextField(
                        hint: 'Email',
                        icon: Icons.people,
                        onChanged: (value) => viewmodel.email = value),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: _buildTextField(
                        hint: 'Password',
                        isObsecure: !viewmodel.showPassword,
                        icon: Icons.lock,
                        button: IconButton(
                            icon: Icon(Icons.visibility),
                            onPressed: () => viewmodel.showPassword =
                                !viewmodel.showPassword),
                        onChanged: (value) => viewmodel.password = value),
                  ),
                  if (viewmodel.showErrorMessage)
                    Text(
                      'Invalid username or password!',
                      style: TextStyle(color: Colors.red, fontSize: 20.0),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: _buildTextField(
                        hint: 'Role',
                        icon: Icons.people,
                        onChanged: (value) => viewmodel.role = value),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //     padding: EdgeInsets.only(left: 10, right: 10),
                  //     child: _buildUploadPictureButton(viewmodel)),
                  // SizedBox(height: 10.0),
                  _buildButtons(context, viewmodel),
                  SizedBox(height: 10.0),
                  _buildLogIn(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // MaterialButton _buildUploadPictureButton(viewmodel) {
  //   return MaterialButton(
  //     color: Colors.teal,
  //     onPressed: () {
  //       viewmodel.getImage();
  //     },
  //     child: Row(
  //       children: [
  //         Text("UPLOAD PICTURE"),
  //         Icon(
  //           Icons.upload_file,
  //           color: Colors.white,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Row _buildLogIn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: TextStyle(fontSize: 18),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => LoginScreenView()));
          },
          child: Text('Sign In Here',
              style: TextStyle(color: Colors.blue, fontSize: 18)),
        )
      ],
    );
  }

  TextField _buildTextField(
      {hint, icon, isObsecure = false, button, onChanged}) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Colors.black54,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          labelText: hint,
          labelStyle: TextStyle(color: Colors.black)),
      obscureText: isObsecure,
      onChanged: onChanged,
    );
  }

  Row _buildButtons(BuildContext context, SignUpViewModel viewmodel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          child: MaterialButton(
            height: 50,
            color: Colors.teal,
            child: Text(
              'REGISTER',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => _signup(context, viewmodel),
          ),
        ),
      ],
    );
  }

  Widget _buildCoverImage() {
    return Image(
      image: AssetImage('assets/images/signup.jpg'),
    );
  }
}
