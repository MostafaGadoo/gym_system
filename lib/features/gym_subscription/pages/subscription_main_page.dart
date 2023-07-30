import 'package:flutter/material.dart';

class SubscriptionMainPage extends StatelessWidget {
  const SubscriptionMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Text(
              'Book your subscription here'
            ),
          ],
        ),
      ),
    );
  }
}
