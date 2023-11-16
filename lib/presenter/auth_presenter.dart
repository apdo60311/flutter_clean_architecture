import 'package:flutter_mvp/model/user.dart';
import 'package:flutter_mvp/presenter/auth_presenter_interface.dart';
import 'package:flutter_mvp/view/view_interface.dart';

class AuthPresenter implements AuthPresenterInterface {
  late ViewInterface _viewInterface;

  AuthPresenter(viewInterface) {
    _viewInterface = viewInterface;
  }

  @override
  void login(String username, String password) {
    // Do Login logic
    _viewInterface.updateUI(password);
  }

  @override
  void register(User newUser) {
    // Do Register logic
    _viewInterface.updateUI(newUser.name);
  }

  @override
  void restPassword(User user, String newPassword) {
    // Do Rest Password logic
    _viewInterface.updateUI(user.name);
  }
}
