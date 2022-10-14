import 'package:fifa_word_cup_app/app/pages/splash/presenter/splash_presenter.dart';
import 'package:fifa_word_cup_app/app/pages/splash/presenter/splash_presenter_impl.dart';
import 'package:fifa_word_cup_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter_getit/flutter_getit.dart';

class SplashRout extends FlutterGetItPageRoute {
  const SplashRout({super.key});

  @override
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton<SplashPresenter>((i) => SplashPresenterImpl())];

  @override
  WidgetBuilder get page => (context) => SplashPage(presenter: context.get());
}