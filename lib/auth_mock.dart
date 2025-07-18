// auth_mock.dart
import 'package:mocktail/mocktail.dart';
import 'auth.dart';

class MockAuthService extends Mock implements AuthService {}

class MockAuthServiceFailure extends Mock implements AuthService {
  @override
  Future<bool> login(String email, String password) async {
    return Future.value(false);
  }
}
