class Book {
  String? imgUrl;
  String? name;
  String? author;
  num? score;
  num? review;
  num? view;
  List<String>? type;
  String? desc;
  Book(
    this.imgUrl,
    this.name,
    this.author,
    this.score,
    this.review,
    this.view,
    this.type,
    this.desc,
  );
  static List<Book> generateRecommendedBook() {
    return [
      Book(
          'assets/images/rec1.jpg',
          'harry potter and the philosopher\'s stone',
          'J.K Rowling',
          4.9,
          107.3,
          2.7,
          ['action', 'Fantasy', 'Supernatural'],
          'Harry Potter has been living a difficult life, regularly\nabused by his cold aunt and uncle, Vernon and...'),
      Book(
          'assets/images/rec2.jpg',
          'harry potter and the philosopher\'s stone',
          'J.K Rowling',
          4.9,
          107.3,
          2.7,
          ['action', 'Fantasy', 'Supernatural'],
          'Harry Potter has been living a difficult life, regularly\nabused by his cold aunt and uncle, Vernon and...'),
      Book(
          'assets/images/rec3.jpg',
          'harry potter and the philosopher\'s stone',
          'J.K Rowling',
          4.9,
          107.3,
          2.7,
          ['action', 'Fantasy', 'Supernatural'],
          'Harry Potter has been living a difficult life, regularly\nabused by his cold aunt and uncle, Vernon and...'),
    ];
  }

  static List<Book> GenerateTrendingBook() {
    return [
      Book(
          'assets/images/rec4.jpg',
          'harry potter and the philosopher\'s stone',
          'J.K Rowling',
          4.9,
          107.3,
          2.7,
          ['action', 'Fantasy', 'Supernatural'],
          'Harry Potter has been living a difficult life, regularly\nabused by his cold aunt and uncle, Vernon and...'),
      Book(
          'assets/images/rec5.jpg',
          'harry potter and the philosopher\'s stone',
          'J.K Rowling',
          4.9,
          107.3,
          2.7,
          ['action', 'Fantasy', 'Supernatural'],
          'Harry Potter has been living a difficult life, regularly\nabused by his cold aunt and uncle, Vernon and...'),
      Book(
          'assets/images/rec6.jpg',
          'harry potter and the philosopher\'s stone',
          'J.K Rowling',
          4.9,
          107.3,
          2.7,
          ['action', 'Fantasy', 'Supernatural'],
          'Harry Potter has been living a difficult life, regularly\nabused by his cold aunt and uncle, Vernon and...')
    ];
  }
}
