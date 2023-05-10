import 'package:flutter/material.dart';

class SiView extends StatefulWidget {
  const SiView({super.key});

  @override
  State<SiView> createState() => _SiViewState();
}

class _SiViewState extends State<SiView> {
  final principalController = TextEditingController();
  final timeController = TextEditingController();
  final rateController = TextEditingController();
  double result = 0;
  void simpleInterest() {}

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 8),
            TextField(
              controller: principalController,
              decoration: const InputDecoration(
                labelText: "Enter the principle",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: timeController,
              decoration: const InputDecoration(
                labelText: "Enter the time",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: rateController,
              decoration: const InputDecoration(
                labelText: "Enter the rate",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Calculate the simple interest'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Simple Interest is: $result',
              style: const TextStyle(),
            )
          ],
        ),
      ),
    );
  }
}
