part of 'authentication_bloc_bloc.dart';

sealed class AuthenticationBlocState extends Equatable {
  const AuthenticationBlocState();
  
  @override
  List<Object> get props => [];
}

final class AuthenticationBlocInitial extends AuthenticationBlocState {}
