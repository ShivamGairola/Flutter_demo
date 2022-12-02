import 'package:flutter/material.dart';
import 'package:my_app/learn_flutter_page.dart';
import 'package:my_app/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext) {
                  return const LearnFlutterPage();
                },
              ),
            );
          },
          child: const Text('Demo Page')),
    );
  }
}
