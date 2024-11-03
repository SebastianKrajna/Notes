import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Error Page [TODO]'),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Retry [TODO]"),
            ),
          ],
        ),
      ),
    );
  }
}
