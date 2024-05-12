import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'authentication_bloc_event.dart';
part 'authentication_bloc_state.dart';

class AuthenticationBlocBloc
    extends Bloc<AuthenticationBlocEvent, AuthenticationState> {
  final UserRepository userRepository;
  late final StreamSubscription<MyUser?> _usersubscription;
  AuthenticationBlocBloc({required this.userRepository})
      : super(const AuthenticationState.unknown()) {
    _usersubscription = userRepository.user.listen((user) {
      add(AuthenticationUserChanged(user));
    });
    on<AuthenticationUserChanged>((event, emit) {
      if (event.user != MyUser.empty) {
        emit(AuthenticationState.authenticated(event.user!));
      } else {
        emit(const AuthenticationState.unauthenticated());
      }
    });
  }
  @override
  Future<void> close() {
    _usersubscription.cancel();
    return super.close();
  }
}
