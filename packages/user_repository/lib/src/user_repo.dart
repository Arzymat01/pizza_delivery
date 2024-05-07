import 'dart:async';

abstract class UserRepository {
  Stream<MyUser?> get user;
  Future<MyUser> signUp(MyUser myUser, String password);
  Future<void> setUserData(MyUser user);
  Future<void> signIn(String email, String passwor);
  Future<void> logOut();
}
