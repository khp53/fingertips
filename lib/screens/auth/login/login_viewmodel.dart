import 'package:finger_tips/app/dependencies.dart';
import 'package:finger_tips/models/users.dart';
import 'package:finger_tips/screens/viewmodel.dart';
import 'package:finger_tips/services/auth/auth_services.dart';

class LoginViewmodel extends Viewmodel {
  AuthService get _service => dependency();
  User _user = User();
  bool _showPassword = false;
  bool _showErrorMessage = false;

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

  Future<User> authenticate() async {
    turnBusy();
    final User _user =
        await _service.authentication(email: email, pass: password);
    if (_user == null) _showErrorMessage = true;
    turnIdle();
    return _user;
  }
}
