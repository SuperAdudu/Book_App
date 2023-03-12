import 'package:flutter/material.dart';

class Tittle extends StatelessWidget {
  const Tittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.headlineMedium,
          children: const [
            TextSpan(text: "What are you \nreading "),
            TextSpan(
              text: "today?",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
