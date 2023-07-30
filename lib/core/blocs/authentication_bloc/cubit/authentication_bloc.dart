import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_system/core/blocs/authentication_bloc/states/authentication_state.dart';
import 'package:gym_system/core/models/user_model.dart';

class AuthenticationBloc extends Cubit<AuthenticationState>{
  AuthenticationBloc() : super(AuthenticationInitialState());

  static AuthenticationBloc get(context) => BlocProvider.of(context);

  void userRegister({
    required String? name,
    required String? email,
    required String? password,

  }
      ){
    emit(SignUpLoadingState());

    FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    ).then((value){
      debugPrint(value.user!.email);
      debugPrint(value.user!.uid);
      userCreate(
        name: name,
        email: email,
        uId: value.user!.uid,
      );
      emit(SignUpSuccessState());
    }).catchError((error){
      emit(SignUpErrorState(error.toString()));
    });
  }

  void userCreate({
    required String? name,
    required String? email,

    required String? uId,
  }){
    UserModel user = UserModel(
      name: name,
      email: email,
      uId: uId,
      // userMentalIllnessStare: 0,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(user.toMap())
        .then((value){
      emit(SignUpCreateUserSuccessState());
      debugPrint('user created');
    }).catchError((error){
      emit(SignUpCreateUserErrorState(error.toString()));
      debugPrint('Error');
    });
  }

}