import 'package:finger_tips/app/dependencies.dart';
import 'package:finger_tips/models/users.dart';
import 'package:finger_tips/screens/viewmodel.dart';
import 'package:finger_tips/services/auth/auth_services.dart';

class UserViewModel extends Viewmodel {
  AuthService get _service => dependency();
  User _users;

  get user => _users;
  set user(val) => _users = val;
  bool get isUserSignedIn => _users != null;

  void authenticate(User user) async => _users =
      await _service.authentication(email: user.email, pass: user.password);

  void register(User user) async => _users = await _service.registration(
      email: user.email,
      pass: user.password,
      name: user.name,
      photoUrl: user.photoUrl,
      role: user.role);
}
