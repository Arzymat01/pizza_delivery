// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../entities/entities.dart';

export 'user.dart';

class MyUser {
  String userId;
  String email;
  String name;
  bool hasActiveCard;
  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCard,
  });
  static final empty = MyUser(
    userId: '',
    email: '',
    name: '',
    hasActiveCard: false,
  );
  MyUserEntity toEntity() {
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      hasActiveCard: hasActiveCard,
    );
  }

  static MyUser fromEntity(MyUserEntity entuty) {
    return MyUser(
      userId: entuty.userId,
      email: entuty.email,
      name: entuty.name,
      hasActiveCard: entuty.hasActiveCard,
    );
  }

  @override
  String toString() {
    return 'MyUser $userId,$email,$name,$hasActiveCard';
  }
}
