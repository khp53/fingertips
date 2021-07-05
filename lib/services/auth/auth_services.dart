import 'package:finger_tips/models/users.dart';

abstract class AuthService {
  Future<User> authentication({String email, String pass});
  Future<User> registration(
      {String email, String pass, String role, String photoUrl, String name});
}
