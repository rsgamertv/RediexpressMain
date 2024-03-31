import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:RediExpress/Models/UserModel/user_model.dart';
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
      else {
        emit(AuthorizationFailure());
        print('Иди туда');
      }
    });
  }
  final AbstractUserModel abstractUserModel;
}
