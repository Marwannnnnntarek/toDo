part of 'login_cubit.dart';

abstract class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginSuccess extends LoginState {
  final User? user;
  LoginSuccess({required this.user});
}

final class LoginFailure extends LoginState {
  final String message;
  LoginFailure({required this.message});
}

final class LoginLoading extends LoginState {}
