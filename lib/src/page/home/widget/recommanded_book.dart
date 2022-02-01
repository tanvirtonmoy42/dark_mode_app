import 'dart:ui';

import 'package:dark_mode_app/src/model/Book.dart';
import 'package:dark_mode_app/src/page/detail/detail.dart';
import 'package:dark_mode_app/src/page/home/widget/category_title.dart';
import 'package:flutter/material.dart';

class RecomandedBook extends StatelessWidget {
  final RecomandedList = Book.generateRecommendedBook();
  RecomandedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle('Recommanded for you'),
        SizedBox(
          height: 250,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(20),
              itemBuilder: (_, index) {
                var book = RecomandedList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Detail(book)));
                  },
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                book.imgUrl!,
                                fit: BoxFit.cover,
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                book.name!,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              book.author!,
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: _buildIconText(
                            Icons.star, Colors.orange[300]!, '${book.score}'),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                    width: 15,
                  ),
              itemCount: RecomandedList.length),
        )
      ],
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            size: 14,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
