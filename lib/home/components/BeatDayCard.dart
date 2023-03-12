import 'package:ebook_app/constant.dart';
import 'package:ebook_app/home/components/ButtonRead.dart';
import 'package:ebook_app/home/components/Rating.dart';
import 'package:flutter/material.dart';

class BestDayCard extends StatelessWidget {
  const BestDayCard({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 24,
                left: 24,
                right: size.width * 0.35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: Color(0xFFEAEAEA).withOpacity(0.45),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "New York Time Best For 5th March 2023",
                    style: TextStyle(
                      fontSize: 10,
                      color: kLightBlackColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "How To Win \nFriend & Influence",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Murazama san",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      StarRate(starRate: 4.9),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people….",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * 0.37,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: size.width * 0.3,
              child: ButtonRead(),
            ),
          ),
        ],
      ),
    );
  }
}
