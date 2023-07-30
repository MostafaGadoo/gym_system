import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_system/core/blocs/calories_API_Block/states.dart';
import 'package:gym_system/core/models/calories_model.dart';
import 'package:gym_system/core/network/shared/dio_helper.dart';
import 'package:http/http.dart' as http;

class CaloriesAPIBloc extends Cubit<CaloriesAPIStates>{
  CaloriesAPIBloc() : super(CaloriesAPIInitialState());

  static CaloriesAPIBloc get(context) => BlocProvider.of(context);
  

  List<CaloriesModel> caloriesModel = [];
  // void getFoodCalories(){
  //   emit(GetCaloriesLoadingState());
  //   DioHelper.getData(
  //       url: 'https://api.api-ninjas.com/v1/nutrition?',
  //       query: {
  //         'query': 'apple',
  //       },
  //       ).then((value) {
  //         debugPrint(value.data.toString());
  //         value.data['items'].forEach((element){
  //           caloriesModel.add(CaloriesModel.fromJson(element));
  //         });
  //         emit(GetCaloriesSuccessState());
  //   }).catchError((error){
  //         debugPrint('Error  ${error.toString()}');
  //         emit(GetCaloriesErrorState(error.toString()));
  //   });
  // }

  var data;
  var caloriesData;
  Map<String, String> caloriesMap = {};
  List<String> caloriesList = [];
  String calories = '';
  void getCalories(String search) async{
    String url = 'https://api.api-ninjas.com/v1/nutrition?query=$search';
    emit(GetCaloriesLoadingState());
    await http.get(
        Uri.parse(url),
        headers: {'X-Api-Key' : 'FyBV6owLbPzvmF5JMmBoZw==nCK1jnbzwzoeBQuA'}).
        then((value) {
          debugPrint(value.body.toString());
          http.Response response = value;
          data = value.body;
          // CaloriesModel.fromJson(value.body as Map<String, dynamic>);
          calories = value.body;
          debugPrint('data is as string + $calories');
          emit(GetCaloriesSuccessState());


          return response;
    }).
        catchError((error){
          debugPrint('Error  ${error.toString()}');
          emit(GetCaloriesErrorState(error.toString()));
    });

  //01118797857
  }

}