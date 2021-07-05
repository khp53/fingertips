import 'dart:io';

import 'package:finger_tips/app/dependencies.dart';
import 'package:finger_tips/models/users.dart';
import 'package:finger_tips/screens/viewmodel.dart';
import 'package:finger_tips/services/auth/auth_services.dart';
import 'package:finger_tips/services/image_upload/user_image_service.dart';
import 'package:image_picker/image_picker.dart';

class SignUpViewModel extends Viewmodel {
  AuthService get _service => dependency();
  //UserImageUploadService get _uService => dependency();
  User _user = User();
  bool _showPassword = false;
  bool _showErrorMessage = false;

  // File _image;
  // set image(value) => _image = value;
  // get image => _image;

  //final picker = ImagePicker();

  // Future getImage() async {
  //   final pickedFile = await picker.getImage(source: ImageSource.gallery);
  //   turnBusy();
  //   image = File(pickedFile.path);
  //   turnIdle();
  // }

  get user => _user;
  set user(value) => _user = value;

  get showPassword => _showPassword;
  set showPassword(value) {
    turnBusy();
    _showPassword = value;
    turnIdle();
  }

  get showErrorMessage => _showErrorMessage;
  set showErrorMessage(value) {
    turnBusy();
    _showErrorMessage = value;
    turnIdle();
  }

  get email => _user.email;
  set email(value) {
    turnBusy();
    _showErrorMessage = false;
    _user.email = value;
    turnIdle();
  }

  get password => _user.password;
  set password(value) {
    turnBusy();
    _showErrorMessage = false;
    _user.password = value;
    turnIdle();
  }

  get name => _user.name;
  set name(value) {
    turnBusy();
    _showErrorMessage = false;
    _user.name = value;
    turnIdle();
  }

  get role => _user.role;
  set role(value) {
    turnBusy();
    _showErrorMessage = false;
    _user.role = value;
    turnIdle();
  }

  get photoUrl => _user.photoUrl;
  set photoUrl(value) {
    turnBusy();
    _showErrorMessage = false;
    _user.photoUrl = value;
    turnIdle();
  }

  Future<User> register() async {
    turnBusy();
    final User _user = await _service.registration(
        email: email,
        pass: password,
        name: name,
        photoUrl: photoUrl,
        role: role);
    if (_user == null) _showErrorMessage = true;
    turnIdle();
    return _user;
  }

  // Future<void> uploadImage() async {
  //   turnBusy();
  //   await _uService.uploadUserImage(image);
  //   turnIdle();
  // }

  // Future<String> getDownloadUrl() async {
  //   turnBusy();
  //   final url = _uService.getDownloadUrl();
  //   photoUrl = url;
  //   print(photoUrl);
  //   turnIdle();
  //   return photoUrl;
  // }
}
