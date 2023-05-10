import 'package:flutter/material.dart';
import 'package:flutter_app/view/arithmetic_view.dart';
import 'package:flutter_app/view/circle_view.dart';
import 'package:flutter_app/view/container_view.dart';
import 'package:flutter_app/view/dashboard_view.dart';
import 'package:flutter_app/view/display_name_view.dart';
import 'package:flutter_app/view/icons_view.dart';
import 'package:flutter_app/view/load_image_view.dart';
import 'package:flutter_app/view/media_query_view.dart';
import 'package:flutter_app/view/output_view.dart';
import 'package:flutter_app/view/rich_text_view.dart';

import 'view/class_exercise_view.dart';
// import 'package:flutter_app/view/si_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/arithmeticRoute': (context) => const ArithmeticView(),
        // '/siRoute': (context) => const SimpleInterestView(),
        '/circleRoute': (context) => const CircleView(),
        '/displayRoute': (context) => const DisplayNameView(),
        '/richRoute': (context) => const RichTextView(),
        '/iconsRoute': (context) => const IconsView(),
        '/outputRoute': (context) => const OutputView(),
        '/containerRoute': (context) => const ContainerView(),
        '/loadImageRoute': (context) => const LoadImageView(),
         "/MediaQueryRoute": (context) => const MediaQueryView(),
        "/ClassExerciseRoute": (context) => const ClassExerciseView(),
      },
    );
  }
}
