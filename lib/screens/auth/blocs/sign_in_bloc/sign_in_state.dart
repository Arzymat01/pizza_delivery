part of 'sign_in_bloc.dart';

sealed class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

final class SignInInitial extends SignInState {}

final class SignInfailure extends SignInState {}

final class SignInLoadong extends SignInState {}

final class SignInSucces extends SignInState {}
