import 'package:fifa_word_cup_app/app/core/ui/helpers/loader.dart';
import 'package:fifa_word_cup_app/app/core/ui/helpers/messages.dart';
import 'package:fifa_word_cup_app/app/pages/auth/login/login_page.dart';
import 'package:flutter/widgets.dart';

import './login_view.dart';

abstract class LoginViewImpl extends State<LoginPage>
    with Messages<LoginPage>, Loader<LoginPage>
    implements LoginView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void error(String message) {
    hideLoader();
    showError(message);
  }

  @override
  void success() {
    hideLoader();
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }
}
