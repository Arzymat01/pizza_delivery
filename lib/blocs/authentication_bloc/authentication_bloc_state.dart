part of 'authentication_bloc_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, umknown }

class AuthenticationState extends Equatable {
  const AuthenticationState._(
      {this.status = AuthenticationStatus.umknown, this.user});

  final AuthenticationStatus status;
  final MyUser? user;

  @override
  List<Object> get props => [status, user];
}
