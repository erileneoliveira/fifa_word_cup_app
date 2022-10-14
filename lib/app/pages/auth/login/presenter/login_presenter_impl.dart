import 'dart:developer';

import 'package:fifa_word_cup_app/app/core/exceptions/unautorized_exception.dart';
import 'package:fifa_word_cup_app/app/pages/auth/login/view/login_view.dart';
import 'package:fifa_word_cup_app/app/services/login/login_service.dart';

import './login_presenter.dart';

class LoginPresenterImpl implements LoginPresenter {
  final LoginService loginService;
  late final LoginView _view;

  LoginPresenterImpl({
    required this.loginService,
  });
  @override
  // ignore: non_constant_identifier_names
  Future<void> Login(String email, String password) async {
    {
      try {
        await loginService.execute(email: email, password: password);
        _view.success();
      } on UnautorizedException {
        _view.error('Usuário ou senha inválidos');
      } catch (e, s) {
        log('Erro ao realizar login', error: e, stackTrace: s);
        _view.error('Error ao realizar login');
      }
    }
  }

  @override
  set view(LoginView view) {}
}
