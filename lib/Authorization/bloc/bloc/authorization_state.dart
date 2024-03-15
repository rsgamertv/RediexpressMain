part of 'authorization_bloc.dart';

sealed class AuthorizationState extends Equatable {
  const AuthorizationState();
  
  @override
  List<Object> get props => [];
}

final class AuthorizationInitial extends AuthorizationState {
  

}
