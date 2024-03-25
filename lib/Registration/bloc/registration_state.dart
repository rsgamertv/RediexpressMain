part of 'registration_bloc.dart';
@immutable
abstract class RegistrationState extends Equatable {
  const RegistrationState();
  
  @override
  List<Object> get props => [];
}

final class RegistrationInitial extends RegistrationState {}
class RegistrationLoading extends RegistrationState{
}
class REgistrationLoaded extends RegistrationState{ 
  final bool regaccept;
  REgistrationLoaded({required this.regaccept});

}
class RegistrationFailure extends RegistrationState{
}