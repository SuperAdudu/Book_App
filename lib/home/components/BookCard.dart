import 'package:ebook_app/constant.dart';
import 'package:ebook_app/detail/DetailScreen.dart';
import 'package:ebook_app/home/components/ButtonRead.dart';
import 'package:ebook_app/home/components/Rating.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String nameBook;
  final String nameAuth;
  final double rateNum;
  final String nameImage;
  const BookCard({
    super.key,
    required this.nameBook,
    required this.nameAuth,
    required this.rateNum,
    required this.nameImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 30),
      child: Container(
        height: 245,
        width: 190,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 15),
                      blurRadius: 15,
                      color: kShadowColor,
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              nameImage,
              width: 150,
            ),
            Rating(rate: rateNum),
            InfoBook(
              name: nameBook,
              auth: nameAuth,
            ),
          ],
        ),
      ),
    );
  }
}

class InfoBook extends StatelessWidget {
  final String name;
  final String auth;
  const InfoBook({
    super.key,
    required this.name,
    required this.auth,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 160,
      child: Container(
        height: 85,
        width: 190,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: kBlackColor),
                  children: [
                    TextSpan(
                      text: "$name\n",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: auth,
                      style: const TextStyle(
                        color: kLightBlackColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    width: 95,
                    child: const Text(
                      "Detail",
                      style: TextStyle(color: kBlackColor),
                    ),
                  ),
                ),
                ButtonRead(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
