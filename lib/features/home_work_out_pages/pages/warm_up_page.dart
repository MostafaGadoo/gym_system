import 'package:flutter/material.dart';

class WarmUpPage extends StatelessWidget {
  const WarmUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text('Warm Up',
          style: TextStyle(
            color: Colors.black,
          ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'This will help you do exercises properly and help prevent injury. You can run in place, do air punches and kicks, or some jumping jacks.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Image(
                image: AssetImage('assets/images/jumping_jacks.jpg'),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                'Advanced warm up routine:',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                '- Jump rope: 2-3 minutes \n- Jumping jacks: 25 reps \n- Body-weight squats: 20 reps \n- Lunges: 5 reps each leg.\n- Hip extensions: 10 reps each side \n- Hip rotations: 5 each leg \n- Forward leg swings: 10 each leg \n- Side leg swings: 10 each leg \n- Push-ups: 10-20 reps \n- Spider-man steps: 10 reps',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                'Our goal isn’t to tire you out, instead we want to warm you up.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
