import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fifa_word_cup_app/app/core/exceptions/repository_exceptions.dart';
import 'package:fifa_word_cup_app/app/core/exceptions/unautorized_exception.dart';
import 'package:fifa_word_cup_app/app/core/rest/custom_dio.dart';
import 'package:fifa_word_cup_app/app/models/register_user_model.dart';

import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;

  AuthRepositoryImpl({required this.dio});

  @override
  Future<String> login(
      {required String email, required String password}) async {
    try {
      final result = await dio.post('/api/auth', data: {
        'email': email,
        'password': password,
      });

      final accessToken = result.data['accessToken'];
      if (accessToken == null) {
        throw UnautorizedException();
      }
      return accessToken;
    } on DioError catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      if (e.response?.statusCode == 401) {
        throw UnautorizedException();
      }
      throw RepositoryExceptions(message: 'Erro ao realizar login');
    }
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterUserModel registerModel) async {
    try {
      await dio.unAuth().post(
            '/api/register',
            data: registerModel.toMap(),
          );
    } on DioError catch (e, s) {
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      throw RepositoryExceptions(message: 'Erro ao registrar usuário');
    }
  }
}
