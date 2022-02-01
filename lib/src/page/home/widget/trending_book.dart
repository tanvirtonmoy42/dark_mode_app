import 'package:dark_mode_app/src/model/Book.dart';
import 'package:dark_mode_app/src/page/detail/detail.dart';
import 'package:dark_mode_app/src/page/home/widget/category_title.dart';
import 'package:flutter/material.dart';

class TrendingBook extends StatelessWidget {
  final TrendingList = Book.GenerateTrendingBook();
  TrendingBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool col = true;
    return Column(
      children: [
        const CategoryTitle('Trending Book'),
        ListView.separated(
            padding: const EdgeInsets.all(20),
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              final book = TrendingList[index];
              Color color;
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Detail(book)));
                },
                child: SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(book.imgUrl!),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    book.name!,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Icon(
                                  Icons.bookmark,
                                  color: Colors.orange[300],
                                ),
                              ],
                            ),
                            Text(
                              book.author!,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              book.desc!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                _buildIconText(Icons.star, Colors.orange[300]!,
                                    '${book.score}(${book.review}k)'),
                                const SizedBox(
                                  width: 10,
                                ),
                                _buildIconText(Icons.visibility, Colors.white,
                                    '${book.view}M Read'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (_, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: TrendingList.length)
      ],
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 14,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
