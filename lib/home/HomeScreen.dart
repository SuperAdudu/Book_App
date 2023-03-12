import 'package:ebook_app/home/components/BeatDayCard.dart';
import 'package:ebook_app/home/components/ContinueCard.dart';
import 'package:ebook_app/home/components/ListBook.dart';
import 'package:ebook_app/home/components/Title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Tittle(),
                  const SizedBox(height: 20),
                  ListBook(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headlineSmall,
                            children: const [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                text: "day",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        BestDayCard(size: size),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headlineSmall,
                            children: const [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                text: "reading ...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Continuecard(size: size),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
