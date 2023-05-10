import 'package:flutter/material.dart';

class ClassExerciseView extends StatefulWidget {
  const ClassExerciseView({super.key});

  @override
  State<ClassExerciseView> createState() => _ClassExerciseViewState();
}

class _ClassExerciseViewState extends State<ClassExerciseView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row and Column'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height / 5,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: height,
                    width: 20,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: height,
                    width: 20,
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: height,
                    width: 20,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              height: height,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: height,
              width: width,
            ),
          )
        ],
      ),
    );
  }
}