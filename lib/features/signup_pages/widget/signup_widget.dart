import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_system/core/blocs/authentication_bloc/cubit/authentication_bloc.dart';
import 'package:gym_system/core/blocs/authentication_bloc/states/authentication_state.dart';
import 'package:gym_system/features/login_page/pages/login_page.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        AuthenticationBloc authenticationCubit = AuthenticationBloc.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Sign Up'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Image(image: AssetImage('assets/images/gym_signup.jpg')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: userNameController,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter username';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Enter your username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(18),
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.02,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email';
                          } else {
                            if (!value.contains('@')) {
                              return 'Please enter valid email';
                            }
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(18),
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.02,
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          } else {
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(18),
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.02,
                      ),
                      TextFormField(
                        controller: confirmPasswordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          } else {
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Confirm password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(18),
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?'),
                          TextButton(onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          }, child: const Text('Login')),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.04,
                      ),
                      Container(
                          width: double.infinity,
                          height: 54,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.orange,
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              authenticationCubit.userRegister(
                                  name: userNameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                              );
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),)
          ,
        );
      },
    );
  }
}
