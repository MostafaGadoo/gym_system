import 'package:flutter/material.dart';

class SubscriptionMainPage extends StatelessWidget {
  const SubscriptionMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gym Subscription',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 8,
                                  ),
                                  child: Text(
                                    'Golds Gym',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Be with you every step of the way.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image(
                              image: AssetImage('assets/images/golds_gym.png'),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                  ),
                  itemCount: 3
              ),
            ),

          ],
        ),
      ),
    );
  }
}
