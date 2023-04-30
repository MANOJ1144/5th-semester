import 'package:flutter/material.dart';

class IconsView extends StatefulWidget {
  const IconsView({super.key});

  @override
  State<IconsView> createState() => _IconsViewState();
}

class _IconsViewState extends State<IconsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Display Icons'),
        ),
        body: Column(
          children: [
            Column(
              children: const [
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.red,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.yellow,
                ),
              ],
            )
          ],
        ));
  }
}
