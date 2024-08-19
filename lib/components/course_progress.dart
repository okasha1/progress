import 'package:flutter/material.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

Widget progress(String courseName, double progress) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      padding: const EdgeInsets.only(left: 10),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey[300]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            courseName,
            style: const TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                ProgressBar(
                  value: progress,
                  //specify only one: color or gradient
                  color: Colors.blue,
                  backgroundColor: Colors.grey,
                ),
                Text('${progress * 100}%')
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
