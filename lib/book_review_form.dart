import 'package:book_review_app/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookReviewForm extends StatefulWidget{
  const BookReviewForm({super.key});

  @override
  State<BookReviewForm> createState() {
    return _BookReviewFormState();
  }
}

class _BookReviewFormState extends State<BookReviewForm>{
  double _rating = 0;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _reviewController = TextEditingController();

  void _showSuccessMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text('Review submitted successfully!'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Home())
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Review Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _authorController,
              decoration: const InputDecoration(labelText: 'Author'),
            ),
            const SizedBox(height: 36),
            Text(
              'Rating: ${_rating.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            RatingBar.builder(
              initialRating: _rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 35.0,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  _rating = rating;
                });
              },
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _reviewController,
              maxLines: 2,
              decoration: const InputDecoration(labelText: 'Review'),
            ),
            const SizedBox(height: 16),
            // Add image button here
            GestureDetector(
              onTap: () {
                // Handle image button click
                print('Image button clicked');
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/add_book.png', // Replace with your actual image path
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Title: ${_titleController.text}');
                print('Author: ${_authorController.text}');
                print('Rating: $_rating');
                print('Review: ${_reviewController.text}');

                 _showSuccessMessage();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 245, 174, 42),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text('Submit Review'),
            ),
          ],
        ),
      ),
    );
  }
}