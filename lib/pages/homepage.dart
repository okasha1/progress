import 'package:flutter/material.dart';
import 'package:progress/components/course_progress.dart';
import 'package:progress/provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Achievements'),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 1,
              ))),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Consumer<AppProvider>(
                          builder:
                              (BuildContext context, value, Widget? child) {
                            return CircularStepProgressIndicator(
                              totalSteps: 100,
                              currentStep: value.currentProgress,
                              stepSize: 10,
                              selectedColor: Colors.blue[900],
                              unselectedColor: Colors.grey[200],
                              padding: 0,
                              width: 150,
                              height: 150,
                              selectedStepSize: 15,
                              roundedCap: (_, __) => true,
                            );
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://i.pinimg.com/564x/12/57/1e/12571e6fe194ce03a9d798c457d094c5.jpg',
                            ),
                            radius: 60.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Current Streak',
                    style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          progress('Science', 0.75),
          progress('Chemistry', 0.35),
          progress('Angular', 0.50),
          progress('Gazebo', 0.90)
        ],
      ),
    );
  }
}
