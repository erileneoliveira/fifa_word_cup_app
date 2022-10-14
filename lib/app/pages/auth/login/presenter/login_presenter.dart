// ignore_for_file: non_constant_identifier_names

import 'package:fifa_word_cup_app/app/core/mvp/fwc_presenter.dart';
import 'package:fifa_word_cup_app/app/pages/auth/login/presenter/login_presenter_impl.dart';
import 'package:fifa_word_cup_app/app/pages/auth/login/view/login_view.dart';

abstract class LoginPresenter extends FwcPresenter<LoginView> {
  LoginPresenter(LoginPresenterImpl Function(dynamic i) param0);

  Future<void> Login(String email, String password);
}
