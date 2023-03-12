import 'package:ebook_app/home/HomeScreen.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => HomeScreen()));
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 30,
              color: const Color(0xFF666666).withOpacity(0.15),
            ),
          ],
        ),
        child: const Text(
          "start reading",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
