import 'package:ebook_app/constant.dart';
import 'package:ebook_app/home/components/Rating.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Crushing &",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "Influence",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        const SizedBox(height: 10),
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
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      StarRate(starRate: 4.8),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/images/book-1.png",
          height: 220,
          width: size.width * 0.45,
        ),
      ],
    );
  }
}
