import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc() : super(AuthorizationInitial()) {
    on<AuthorizationEvent>((event, emit) {
    });
    on<MakeAuthEvent>((event, emit) {
      print('Bloc');
    } ,);
  }
}
