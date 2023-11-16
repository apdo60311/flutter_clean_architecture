import 'package:flutter_mvp/model/user.dart';

class UserServices {
  static User getCurrentUser() => User(
        name: 'username',
        email: 'username@email.com',
        password: 'password',
        data: {},
      );
}
