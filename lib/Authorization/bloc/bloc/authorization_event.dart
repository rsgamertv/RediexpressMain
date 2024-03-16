part of 'authorization_bloc.dart';

class AuthorizationEvent extends Equatable {
  const AuthorizationEvent();

  @override
  List<Object> get props => [];
}
class SignInEvent extends AuthorizationEvent{
  final String Email;
  final String Password;
  SignInEvent({required this.Email, required this.Password});
}