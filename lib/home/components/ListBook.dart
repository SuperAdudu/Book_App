import 'package:ebook_app/home/components/BookCard.dart';
import 'package:flutter/material.dart';

class ListBook extends StatelessWidget {
  const ListBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BookCard(
            nameAuth: "Gary Venchur",
            nameBook: "Crushing & Influence",
            rateNum: 4.8,
            nameImage: "assets/images/book-1.png",
          ),
          BookCard(
            nameAuth: "Tom Hpllen",
            nameBook: "Top Ten Business Hacker",
            rateNum: 4.7,
            nameImage: "assets/images/book-2.png",
          ),
          BookCard(
            nameAuth: "Murazama San",
            nameBook: "How to win Friends & Influence everything",
            rateNum: 4.9,
            nameImage: "assets/images/book-3.png",
          ),
          SizedBox(width: 30),
        ],
      ),
    );
  }
}
