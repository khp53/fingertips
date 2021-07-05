import 'package:finger_tips/app/dependencies.dart';
import 'package:finger_tips/models/authTokenModel.dart';
import 'package:finger_tips/models/users.dart';
import 'package:finger_tips/services/auth/auth_services.dart';
import 'package:finger_tips/services/rest_services.dart';

class AuthServiceRest implements AuthService {
  RestService get rest => dependency();

  // @override
  // Future<User> authentication({String email, String pass}) async {
  //   final List json = await rest.get('users?email=$email&&password=$pass');
  //   if (json == null || json.length == 0) return null;

  //   final _users = User.fromJson(json[0]);
  //   return _users;
  // }

  @override
  Future<User> authentication({String email, String pass}) async {
    final json = await rest
        .post('auths/signin', data: {'email': email, 'password': pass});
    final _authsData = AuthTokenModel.fromJson(json);

    final jsonUserData = await rest.getById(
        'users/${_authsData.localId}', '${_authsData.idToken}');
    final _users = User.fromJson(jsonUserData);
    return _users;
  }

  @override
  Future<User> registration(
      {String email,
      String pass,
      String role,
      String photoUrl,
      String name}) async {
    print('$email, $pass, $role, $photoUrl, $name');
    final json = await rest
        .postcreate('auths/signup', data: {'email': email, 'password': pass});
    final _authsData = AuthTokenModel.fromJson(json);

    await rest.createCollectionUser(
        'users/${_authsData.localId}', '${_authsData.idToken}', data: {
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
      'role': role
    });

    final jsonUserData = await rest.getById(
        'users/${_authsData.localId}', '${_authsData.idToken}');
    final _users = User.fromJson(jsonUserData);
    return _users;
  }
}
