import 'package:flutter_mvp/model/user.dart';

abstract class AuthPresenterInterface {
  void login(String username, String password);
  void register(User newUser);
  void restPassword(User user, String newPassword);
}
