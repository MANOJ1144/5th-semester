import 'package:flutter/material.dart';

class RichTextView extends StatefulWidget {
  const RichTextView({super.key});

  @override
  State<RichTextView> createState() => _RichTextViewState();
}

class _RichTextViewState extends State<RichTextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RichText'),
      ),

      body:RichText(
        text:  const TextSpan(
          text: "My name is: ",
          style: TextStyle(
            color: Colors.amberAccent,
          fontSize: 30,),
        
        // To give background color
      // body: Container(
        // color: Color.fromRGBO(255, 235, 59, 1), 
        // width: double.infinity,
        // height: double.infinity,
          children: <TextSpan>[
            TextSpan(
              text: " Manoj oli",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        
          
            ),

            ),
            );
  }
}
