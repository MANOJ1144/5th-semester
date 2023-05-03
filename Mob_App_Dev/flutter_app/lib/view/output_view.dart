import 'package:flutter/material.dart';

class OutputView extends StatefulWidget {
  const OutputView({super.key});

  @override
  State<OutputView> createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
  @override
  void didChangeDependencies() {
    var result = ModalRoute.of(context)!.settings.arguments as int?;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output'),
        centerTitle: true,
      ),
      body: RichText(
        text: const TextSpan(
          text: "Hello world ",
          style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
