import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';

class ButtonRead extends StatelessWidget {
  const ButtonRead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(29),
            bottomRight: Radius.circular(29),
          ),
        ),
        child: const Text(
          "Read",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
