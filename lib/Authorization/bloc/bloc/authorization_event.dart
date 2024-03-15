part of 'authorization_bloc.dart';

sealed class AuthorizationEvent extends Equatable {
  const AuthorizationEvent();

  @override
  List<Object> get props => [];
}
class MakeAuthEvent extends AuthorizationEvent{


}
