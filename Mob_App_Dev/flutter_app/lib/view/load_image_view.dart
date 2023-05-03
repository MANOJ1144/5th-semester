import 'package:flutter/material.dart';

class LoadImageView extends StatefulWidget {
  const LoadImageView({super.key});

  @override
  State<LoadImageView> createState() => _LoadImageViewState();
}

class _LoadImageViewState extends State<LoadImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Images'),
        ),
        backgroundColor: const Color.fromARGB(255, 72, 69, 60),
        body: SingleChildScrollView(
            child: Column(
              children:  [
          // For looping images
          // for (int i = 0; i < 100; i++)
          //   if(i%2 == 0) Text(i.toString()),
          const CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('assets/images/rajpalyadav.jpg'),
          ),
          Image.network(
            "https://staticimg.amarujala.com/assets/images/2019/04/23/750x506/rajpal-yadav_1556005843.jpeg?w=480&dpr=2.6",
            fit: BoxFit.fitHeight,
          ),
        ])));
  }
}

































// To place many images 
// import 'package:flutter/material.dart';

// class LoadImageView extends StatefulWidget {
//   const LoadImageView({super.key});

//   @override
//   State<LoadImageView> createState() => _LoadImageViewState();
// }

// class _LoadImageViewState extends State<LoadImageView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Images'),
//         ),
//         backgroundColor: const Color.fromARGB(255, 72, 69, 60),
//         body: Column(children: [
//             Image.asset("assets/images/rajpalyadav.jpg"),
//           const CircleAvatar(
//             radius: 150,
//             backgroundImage: AssetImage('assets/images/rajpalyadav.jpg'),
//           ),
//         ]));
//   }
// }
