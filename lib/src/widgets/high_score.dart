import 'package:flutter/material.dart';

class HighScoreCard extends StatelessWidget {
  const HighScoreCard({
    super.key,
    required this.highScore,
  });

  final ValueNotifier<int> highScore;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: highScore,
        builder: (context, highScore, child) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(4, 6, 12, 18),
            child: Text(
              'high score: $highScore'.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge!,
            ),
          );
        });
  }
}
