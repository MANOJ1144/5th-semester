import 'package:flutter/material.dart';

import '../common/show_my_message.dart';


class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  State<MediaQueryView> createState() => _MediaQueryViewState();
}

class _MediaQueryViewState extends State<MediaQueryView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              color: Colors.red,
              child: Column(children: [
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      showMySnackbar(
                        context,
                        'hello world',
                      );
                    },
                    child: const Text("click me"),
                  ),
                )
              ]),
            ),
          ),
          Expanded(
            // fit: FlexFit.tight,
            child: Container(
              // height: 20,
              width: double.infinity,
              color: Colors.blueAccent,
            ),
          ),
          // Container(
          //   height: height,
          //   width: double.infinity,
          //   color: Colors.blue,
          // ),
        ],
      ),
    );
  }
}