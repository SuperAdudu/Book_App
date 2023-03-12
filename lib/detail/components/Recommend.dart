import 'package:ebook_app/constant.dart';
import 'package:ebook_app/home/components/Rating.dart';
import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  const Recommend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headlineSmall,
              children: [
                TextSpan(text: "You might also"),
                TextSpan(
                  text: " like...",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.only(top: 24, left: 24, right: 150),
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF8F9),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                              text: "How To Win \nFriends & Influence \n",
                              style: TextStyle(fontSize: 20),
                            ),
                            TextSpan(
                              text: "Murazama San",
                              style: TextStyle(color: kLightBlackColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          StarRate(starRate: 4.9),
                          SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 43),
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: const Text(
                              "Read",
                              style: TextStyle(
                                color: kBlackColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/book-3.png",
                  width: 150,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
