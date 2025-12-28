import 'package:e_commerce/features/auth/login/data/repo_impel/login_implement.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_login_state.dart';

class AuthLoginCubit extends Cubit<AuthLoginState> {
  AuthLoginCubit(this.loginImplement) : super(AuthLoginInitial());
  LoginImplement loginImplement;

  Future<void> loginUserEmailAndPassword(String email, String password) async {
    emit(AuthLoginLoading());
    try {
      await loginImplement.loginUserEmailWithPassword(
        email: email,
        password: password,
      );
      emit(AuthLoginSuccess());
    } on FirebaseAuthException catch (error) {
      handlingError(error);
    } catch (error) {
      emit(
        AuthLoginFailuar(
          errMessage: 'oops there was an error, please try again',
        ),
      );
    }
  }

  void handlingError(FirebaseAuthException error) {
    if (error.code == 'user-not-found') {
      emit(AuthLoginFailuar(errMessage: 'No user found for that email.'));
    } else if (error.code == 'wrong-password') {
      emit(
        AuthLoginFailuar(errMessage: 'Wrong password provided for that user'),
      );
    } else {
      emit(
        AuthLoginFailuar(
          errMessage: 'No user found for that email. please try again',
        ),
      );
    }
  }
}
