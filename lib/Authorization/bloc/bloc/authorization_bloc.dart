import 'package:RediExpress/Models/UserModel/AbstractUserModel.dart';
import 'package:RediExpress/Models/UserModel/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc(this.abstractUserModel) : super(AuthorizationInitial()) {

    on<AuthorizationEvent>((AuthorizationEvent, AuthorizationState) async{
      emit(AuthorizationLoading());
      final auth = await abstractUserModel.checkIfExists();
      if(auth == true){
        emit(AuthorizationLoaded(authaccept: auth));
      }
      else{
        print('Иди туда');
      }
    });
  }
  final AbstractUserModel abstractUserModel;
}
