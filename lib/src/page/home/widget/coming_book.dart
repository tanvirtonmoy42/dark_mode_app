import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ComingBook extends StatelessWidget {
  ComingBook({Key? key}) : super(key: key);
  final upcoming = [
    'assets/images/upcoming1.png',
    'assets/images/upcoming2.png',
    'assets/images/upcoming3.png',
  ];
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      height: 120,
      child: Stack(
        children: [
          PageView(
              controller: _pageController,
              children: upcoming
                  .map((e) => Stack(
                        fit: StackFit.expand,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                e,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.black,
                                      Colors.black45,
                                      Colors.black12,
                                      Colors.black.withOpacity(0),
                                    ])),
                          ),
                          const Positioned(
                              top: 20,
                              left: 30,
                              child: Text(
                                'Upcoming Books',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                          const Positioned(
                              top: 55,
                              left: 30,
                              child: Text(
                                '30+ New books come with various\n genres are waiting for you',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ))
                        ],
                      ))
                  .toList()),
          Positioned(
              left: 30,
              bottom: 10,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: upcoming.length,
                effect: const ExpandingDotsEffect(
                    expansionFactor: 4,
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 4,
                    activeDotColor: Colors.white),
                onDotClicked: (index) {
                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },
              ))
        ],
      ),
    );
  }
}
