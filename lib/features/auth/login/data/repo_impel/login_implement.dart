import 'package:e_commerce/features/auth/login/data/repo/login_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginImplement implements LoginRepo {
  @override
  Future<void> loginUserEmailWithPassword({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
