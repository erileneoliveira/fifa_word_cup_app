import '../../models/register_user_model.dart';

abstract class AuthRepository {
  Future<void> register(RegisterUserModel registerModel);
  Future<String> login({required String password, required String email});
  Future<void> logout();
}
