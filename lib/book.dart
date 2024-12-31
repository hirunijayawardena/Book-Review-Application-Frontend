class Book{
  Book({
    required this.id,
    required this.bookTitle,
    required this.authorName,
    required this.rating,
    required this.review,
    required this.date,
    required this.image,
  });

  final String id;
  final String bookTitle;
  final String authorName;
  final int rating;
  final String review;
  final String date;
  final String image;

  factory Book.fromJson(Map<String, dynamic> json){
    return Book(
      id: json['id'],
      bookTitle: json['bookTile'],
      authorName: json['authorName'],
      rating: json['rating'],
      review: json['review'],
      date: json['date'],
      image: json['image'],
    );
  }
}