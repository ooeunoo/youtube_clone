import 'package:flutter_riverpod/flutter_riverpod.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  bool isLoggedIn = false;

  Future<bool> login() async {
    Future.delayed(const Duration(seconds: 2), () {
      isLoggedIn = true;
    });
    return isLoggedIn;
  }
}
