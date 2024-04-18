import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial()) {
    on<RegistrationEvent>((RegistrationEvent, RegistrationState) async{
     emit(RegistrationLoading());
     final register = await GetIt.I<AbstractUserModel>().register();
     if(register == true){
      emit(REgistrationLoaded(regaccept: register));
     }
     else{
      emit(RegistrationFailure());
     }
    });
  }
}
