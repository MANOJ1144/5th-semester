import 'package:flutter/material.dart';
import '../model/circle.dart';
class CircleView extends StatefulWidget {
  const CircleView({super.key});

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView> {

  double radius = 0;
  double area = 0;

  late AreaOfCircle obj;

  void calcArea(){
    obj = AreaOfCircle();
    setState(() {
          area = obj.calcArea(radius: radius);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        title: const Text("Area of Circle."),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(height: 8),
          TextField(
            onChanged: (value) {
              radius = double.parse(value);
            },
            decoration: InputDecoration(
              labelText: 'Enter Radius', 
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
               calcArea();
              },
              child: const Text('Calculate Area'),
            ),
          ),


          Text(
            'Area is $area',
            style: const TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
                    const SizedBox(height: 8),

        
        ]),
      ),
    );
  }
}