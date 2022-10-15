import 'package:fifa_word_cup_app/app/core/rest/custom_dio.dart';
import 'package:fifa_word_cup_app/app/core/ui/styles/theme/theme_config.dart';
import 'package:fifa_word_cup_app/app/pages/auth/login/login_route.dart';
import 'package:fifa_word_cup_app/app/pages/auth/register/register_route.dart';
import 'package:fifa_word_cup_app/app/pages/home/home_page.dart';
import 'package:fifa_word_cup_app/app/pages/splash/splash_rout.dart';
import 'package:fifa_word_cup_app/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'repository/auth/auth_repository.dart';

class FifaWordCupApp extends StatelessWidget {
  const FifaWordCupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i()))
      ],
      child: MaterialApp(
        title: 'Fifa Word Cup Album',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginRoute(),
          '/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
