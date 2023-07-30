import 'package:flutter/material.dart';
import 'package:gym_system/features/gym_subscription/pages/subscription_main_page.dart';
import 'package:gym_system/features/home_page/pages/bmi_page.dart';
import 'package:gym_system/features/home_page/pages/calories_page.dart';
import 'package:gym_system/features/home_page/pages/calories_search_page.dart';
import 'package:gym_system/features/home_page/pages/gym_programs.dart';
import 'package:gym_system/features/home_page/pages/home_work_out_page.dart';
import 'package:gym_system/features/home_page/pages/online_sessions.dart';
import 'package:gym_system/features/home_page/pages/super_set.dart';
import 'package:gym_system/features/home_page/widgets/horizontal_list.dart';

class ListClass{
  final String image;
  final String text;

  ListClass({
    required this.image,
    required this.text,
  });
}
class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {

  List<ListClass> listClass =[
    ListClass(
      image: 'assets/images/home_workout.jpg',
      text: 'Get your home workouts',
    ),
    ListClass(
      image: 'assets/images/weights.jpg',
      text: 'Know best gym programs',
    ),
    ListClass(
      image: 'assets/images/super_sets.jpg',
      text: 'Work with super sets',
    ),
    ListClass(
      image: 'assets/images/body_workout.jpg',
      text: 'Book your online session',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Hello Name',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.24,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>  HorizontalListContainer(
                      image: listClass[index].image,
                      text: listClass[index].text,
                      onTap: (){
                        if(index == 0){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeWorkOutPage()));
                        }else if(index ==1){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const GymPrograms()));
                        }else if(index == 2){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SuperSets()));
                        }else if(index == 3){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const OnlineSessions()));
                        }
                      }
                    ),
                    separatorBuilder: (context, builder)=> const SizedBox(
                      width: 10,
                    ),
                    itemCount: listClass.length,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const CaloriesPage()));
                      },
                      child: Container(
                        width: 180,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.balance,
                              color: Colors.white,
                              size: 55,),
                              SizedBox(height: 10,),
                              Text(
                                'Calculate your daily calories',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const BMIPage()));
                      },
                      child: Container(
                        width: 180,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.calculate,
                              color: Colors.white,
                              size: 55,),
                              SizedBox(height: 10,),
                              Text(
                                'Calculate your BMI',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const CaloriesSearchPage()));
                      },
                      child: Container(
                        width: 180,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.manage_search,
                                color: Colors.white,
                                size: 55,),
                              SizedBox(height: 10,),
                              Text(
                                'Search for calories of food',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SubscriptionMainPage()));
                      },
                      child: Container(
                        width: 180,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.directions_run,
                                color: Colors.white,
                                size: 55,),
                              SizedBox(height: 10,),
                              Text(
                                'Book you Gym Subscription',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
