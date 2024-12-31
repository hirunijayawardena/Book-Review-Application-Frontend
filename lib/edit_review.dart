import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:image_picker/image_picker.dart';


class EditReview extends StatefulWidget{
  const EditReview({super.key});

  @override
  State<EditReview> createState() {
    return _EditReviewState();
  }
}

class _EditReviewState extends State<EditReview>{
  double _rating = 0;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _reviewController = TextEditingController();
  XFile? _selectedImage;

  void _showDeleteConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Deletion'),
          content: const Text('Are you sure you want to delete this review?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () {
                Navigator.of(context).pop(); 
                print('Review deleted');
              },
            ),
          ],
        );
      },
    );
  }
  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (mounted && image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Review'),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              
              // "Add Image" button
              ElevatedButton.icon(
                icon: const Icon(Icons.add_a_photo),
                label: const Text('Add Image'),
                onPressed: _selectImage,
              ),
              const SizedBox(height: 8),
        
              // Display selected image
              if (_selectedImage != null)
                Image.file(File(_selectedImage!.path)),
              
              const SizedBox(height: 16),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: (){
                      _showDeleteConfirmation(context);
                    },
                    child: const Text('Delete'),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: (){
                      print('Title: ${_titleController.text}');
                      print('Author: ${_authorController.text}');
                      print('Rating: $_rating');
                      print('Review: ${_reviewController.text}');
                    }, 
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}