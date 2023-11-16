import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvp/model/user.dart';
import 'package:flutter_mvp/presenter/auth_presenter.dart';
import 'package:flutter_mvp/view/view_interface.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements ViewInterface {
  late AuthPresenter _authPresenter;

  String _hint = 'Welcome';

  @override
  void initState() {
    _authPresenter = AuthPresenter(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_hint),
            TextButton(
                onPressed: () {
                  _authPresenter.login('username', 'password');
                },
                child: const Text('Login')),
            TextButton(
                onPressed: () {
                  _authPresenter.register(User(
                      name: 'name',
                      email: 'email',
                      password: 'password',
                      data: {}));
                },
                child: const Text('register')),
          ],
        ),
      ),
    );
  }

  @override
  void updateUI(data) {
    setState(() {
      if (kDebugMode) {
        print(data);
      }
      _hint = data.toString();
    });
  }
}
