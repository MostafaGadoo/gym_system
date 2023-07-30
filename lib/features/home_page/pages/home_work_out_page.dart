import 'package:flutter/material.dart';
import 'package:gym_system/features/home_page/widgets/home_workout_list_item.dart';
import 'package:gym_system/features/home_work_out_pages/pages/beginner_level_page.dart';
import 'package:gym_system/features/home_work_out_pages/pages/warm_up_page.dart';
class HomeWorkOutListData{
  final String header;
  final String subHeader;
  final String image;

  const HomeWorkOutListData({
    required this.header,
    required this.subHeader,
    required this.image,
  });
}
class HomeWorkOutPage extends StatelessWidget {
  HomeWorkOutPage({Key? key}) : super(key: key);
  final List<HomeWorkOutListData> homeWorkOutList = [
    const HomeWorkOutListData(
      header: 'First you need to warm up',
      subHeader: 'No matter which at-home workout you pick, I want you to start with one important thing: a warm-up.',
      image: 'assets/images/warm_up.jpg',
    ),
    const HomeWorkOutListData(
      header: 'Beginner level',
      subHeader: 'Use your body weight to start building your core strength',
      image: 'assets/images/body_weight.jpg',
    ),
    const HomeWorkOutListData(
      header: 'Advanced level',
      subHeader: 'If the beginner at-home workout above is too easy for you, move on to our advanced at-home workout',
      image: 'assets/images/body_weigth_level_2.jpg',
    ),
    const HomeWorkOutListData(
      header: 'High-Intensity Interval',
      subHeader: 'You don’t have to head to the gym to do High-Intensity Interval Training. You can do a complete routine right in your own home!',
      image: 'assets/images/high_intense_workout.jpg',
    ),
    const HomeWorkOutListData(
      header: 'Train like Batman',
      subHeader: 'We love the Caped Crusader here at Nerd Fitness, so naturally we have The Batman Bodyweight Workout for you to try!',
      image: 'assets/images/batman.jpg',
    ),
    const HomeWorkOutListData(
      header: 'The PLP Progression',
      subHeader: 'The PLP is a progressive program in which you complete one additional rep of three exercises – Pull-Ups, Lunges, and Push-Ups – every day, for two months.',
      image: 'assets/images/pull_ups.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => HomeWorkoutListItem(
                      header: homeWorkOutList[index].header,
                      subHeader: homeWorkOutList[index].subHeader,
                      image: homeWorkOutList[index].image,
                      onTap: () {
                        if(index == 0){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const WarmUpPage()));
                        }else if(index == 1){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const BeginnerLevelPage()));
                        }
                      },
                    ),
                    separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                        width: double.infinity,
                      ),
                    ),
                    itemCount: homeWorkOutList.length
                )
                ),
            ],
          ),
        ),
      ),
    );
  }
}
