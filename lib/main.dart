import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_system/core/blocs/authentication_bloc/cubit/authentication_bloc.dart';
import 'package:gym_system/core/blocs/calories_API_Block/bloc.dart';
import 'package:gym_system/features/home_page/pages/bmi_page.dart';
import 'package:gym_system/features/home_page/pages/calories_page.dart';
import 'package:gym_system/features/home_page/pages/home_page.dart';
import 'package:gym_system/features/login_page/pages/login_page.dart';
import 'package:gym_system/features/signup_pages/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CaloriesAPIBloc()),
        BlocProvider(create: (context) => AuthenticationBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
        ),

        home: const HomePage(),
      ),
    );
  }
}

