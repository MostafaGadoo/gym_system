abstract class CaloriesAPIStates{}

class CaloriesAPIInitialState extends CaloriesAPIStates{}

class GetCaloriesLoadingState extends CaloriesAPIStates{}

class GetCaloriesSuccessState extends CaloriesAPIStates{}

class GetCaloriesErrorState extends CaloriesAPIStates{
  final String error;

  GetCaloriesErrorState(this.error);
}