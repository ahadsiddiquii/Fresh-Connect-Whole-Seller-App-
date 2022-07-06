part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class CheckIfLoggedIn extends UserEvent {}

class Signin extends UserEvent {
  final String phoneNum;
  Signin({required this.phoneNum});
}

class Signup extends UserEvent {
  final String phoneNum, fName, lName, city, email;

  Signup({
    required this.phoneNum,
    required this.fName,
    required this.lName,
    required this.email,
    required this.city,
  });
}
