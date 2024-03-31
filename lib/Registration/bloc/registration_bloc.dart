import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this.abstractUserModel) : super(RegistrationInitial()) {
    on<RegistrationEvent>((RegistrationEvent, RegistrationState) async{
     emit(RegistrationLoading());
     final register = await abstractUserModel.register();
     if(register == true){
      emit(REgistrationLoaded(regaccept: register));
     }
     else{
      emit(RegistrationFailure());
     }
    });
  }
    final AbstractUserModel abstractUserModel;
}
