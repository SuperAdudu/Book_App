import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';

class Continuecard extends StatelessWidget {
  const Continuecard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38.5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 30,
            color: const Color(0xFFD3D3D3).withOpacity(0.8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(38.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Crushing & Influence",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Gary Venchuk",
                            style: TextStyle(color: kLightBlackColor),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Chapter 7 of 10",
                              style: TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/book-1.png",
                      width: 55,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 7,
              width: size.width * 0.65,
              decoration: BoxDecoration(
                color: kProgressIndicator,
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
