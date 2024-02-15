import 'package:clone_flutter_youtube/src/services/auth_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authNotifierProvider = StateNotifierProvider<AuthNotifier, bool>(
    (ref) => AuthNotifier(ref.watch(authServiceProvider)));

class AuthNotifier extends StateNotifier<bool> {
  final AuthService _authService;

  AuthNotifier(this._authService) : super(false);

  login() async {
    try {
      state = true;

      await _authService.login().then((value) {});

      state = false;
    } catch (e) {
      state = false;
    }
  }
}
