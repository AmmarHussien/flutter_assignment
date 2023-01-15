import 'package:flutter/material.dart';

class End extends StatelessWidget {
  const End({
    super.key,
    required this.resetHandler,
  });
  final Function resetHandler;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('End'),
        ElevatedButton(
          child: const Text('Restart Quiz'),
          onPressed: () {
            resetHandler();
          },
        ),
      ],
    );
  }
}
