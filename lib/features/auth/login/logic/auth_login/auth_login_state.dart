part of 'auth_login_cubit.dart';

@immutable
abstract class AuthLoginState {}

class AuthLoginInitial extends AuthLoginState {}

class AuthLoginLoading extends AuthLoginState {}

class AuthLoginSuccess extends AuthLoginState {}

class AuthLoginFailuar extends AuthLoginState {
  final String errMessage;
  AuthLoginFailuar({required this.errMessage});
}
