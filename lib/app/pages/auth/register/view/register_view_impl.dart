import 'package:fifa_word_cup_app/app/core/ui/helpers/loader.dart';
import 'package:fifa_word_cup_app/app/core/ui/helpers/messages.dart';
import 'package:fifa_word_cup_app/app/pages/auth/register/register_page.dart';
import 'package:flutter/cupertino.dart';

import './register_view.dart';

abstract class RegisterViewImpl extends State<RegisterPage>
    with Messages<RegisterPage>, Loader<RegisterPage>
    implements RegisterView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void registerError([String? message]) {
    hideLoader();
    showError(message ?? 'Erro ao registrar usuário');
  }

  @override
  void registerSuccess() {
    hideLoader();
    showSucess('Usuário cadastrado com sucesso');
    Navigator.of(context).pop();
  }
}
