import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_system/core/blocs/calories_API_Block/bloc.dart';
import 'package:gym_system/core/blocs/calories_API_Block/states.dart';
import 'package:gym_system/core/models/calories_model.dart';

class CaloriesSearchPage extends StatelessWidget {
  const CaloriesSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return BlocConsumer<CaloriesAPIBloc, CaloriesAPIStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {

        CaloriesAPIBloc cubit = CaloriesAPIBloc.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Search for food calories',
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: searchController,
                        decoration: const InputDecoration(
                          hintText: 'Search for food',
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint(searchController.text);
                        debugPrint('search');
                        cubit.getCalories(searchController.text);
                        debugPrint('data is added ${cubit.data.toString()}');
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                        ),
                        child: const Icon(
                          Icons.search,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    cubit.calories,
                    // cubit.caloriesModel.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
