part of 'authorization_bloc.dart';

@immutable
abstract class AuthorizationState{
  const AuthorizationState();
  
  @override
  List<Object> get props => [];
}

class AuthorizationInitial extends AuthorizationState {
  
}
class AuthorizationLoading extends AuthorizationState{
}
class AuthorizationLoaded extends AuthorizationState{ 
  final bool authaccept;
  AuthorizationLoaded({required this.authaccept});

}
class AuthorizationFailure extends AuthorizationState{
  
}