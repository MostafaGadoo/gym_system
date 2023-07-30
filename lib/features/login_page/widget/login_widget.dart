import 'package:flutter/material.dart';
import 'package:gym_system/features/signup_pages/pages/signup_page.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  // var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Form(
        // key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                child: const Image(
                  height: 100,
                  image: AssetImage('assets/images/wake_up_and_work.jpg'),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Email';
                  }else{
                    if(!value.contains('@')){
                      return 'Please enter valid email';
                    }
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your Email',
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
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
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
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignUpPage()));
                  }, child: const Text('SignUp')),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              Container(
                width: double.infinity,
                height: 54,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.blue,
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
