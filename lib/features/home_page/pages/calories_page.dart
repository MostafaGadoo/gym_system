import 'package:flutter/material.dart';

class CaloriesPage extends StatefulWidget {

  const CaloriesPage({Key? key}) : super(key: key);

  @override
  State<CaloriesPage> createState() => _CaloriesPageState();
}

class _CaloriesPageState extends State<CaloriesPage> {
  final TextEditingController weightController  = TextEditingController();

  final TextEditingController ageController = TextEditingController();

  final TextEditingController heightController = TextEditingController();

  bool isMale = true;

  double bmr = 0.0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Calculate your calories',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                            debugPrint(isMale.toString());
                          });
                        },
                        child: Container(
                          // width: 150,
                          height: 170,
                          decoration: BoxDecoration(
                            color: isMale ? Colors.green : Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.height * 0.15,
                              ),
                              const Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
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
                          setState(() {
                            isMale = false;
                            debugPrint(isMale.toString());
                          });
                        },
                        child: Container(
                          // width: 150,
                          height: 170,
                          decoration: BoxDecoration(
                            color:isMale? Colors.orange : Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.female,
                                color:Colors.white,
                                size: MediaQuery.of(context).size.height * 0.15,
                              ),
                              const Text(
                                'Female',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const Text(
                  'Enter your weight:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextFormField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your weight';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter your weight',
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
                const Text(
                  'Enter your height:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextFormField(
                  controller: heightController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your height';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter your height',
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
                const Text(
                  'Enter your age:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextFormField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter your age',
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
                  height: MediaQuery.of(context).size.height * 0.17,
                ),
                Container(
                  width: double.infinity,
                  height: 54,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      if(isMale == true){
                        bmr = 66.47 + (13.75 * double.parse(weightController.text)) + (5.003 * double.parse(heightController.text)) - (6.755 * double.parse(ageController.text));
                      }else{
                        bmr = 655.1 + (9.563 * double.parse(weightController.text)) + (1.85 * double.parse(heightController.text)) - (4.676 * double.parse(ageController.text));
                      }
                      debugPrint('Your weight is: ${weightController.text}');
                      debugPrint('Your height is: ${heightController.text}');
                      debugPrint('Your age is: ${ageController.text}');
                      debugPrint('Your BMR is: ${bmr.round().toString()}');
                    },
                    child: const Text(
                      'Calculate your BMR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
