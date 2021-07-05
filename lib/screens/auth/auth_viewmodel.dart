import 'package:finger_tips/app/dependencies.dart';
import 'package:finger_tips/models/users.dart';
import 'package:finger_tips/screens/users/user_viewmodel.dart';
import 'package:finger_tips/screens/viewmodel.dart';

class AuthViewmodel extends Viewmodel {
  UserViewModel get _userViewmodel => dependency();
  User get user => _userViewmodel.user;
  set user(User value) => update(() async => _userViewmodel.user = value);
  void authenticate(User user) =>
      update(() async => _userViewmodel.authenticate(user));

  void register(User user) => update(() async => _userViewmodel.register(user));

  bool get isUserSignedIn => _userViewmodel.isUserSignedIn;
}
