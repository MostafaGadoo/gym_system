import 'package:flutter/material.dart';

class BeginnerLevelPage extends StatelessWidget {
  const BeginnerLevelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Beginner Level',
          style: TextStyle(
            color: Colors.black,
          ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'If you don’t have milk in the house for the rows, find something of roughly the same weight with a good handle.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Image(image: AssetImage('assets/images/jumping_rop.jpg')),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              'Beginner Workout:',
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
              ' - Body-weight squats: 20 reps \n - Push-ups: 10 reps \n - Walking lunges: 10 each leg \n - Dumbbell rows (using a gallon milk jug \n or another weight): 10 each arm. \n - Plank: 15 seconds \n - Jumping Jacks: 30 reps',
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
              'You didn\'t gain all your weight in one day; you won\'t lose it in one day. Be patient with yourself.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
