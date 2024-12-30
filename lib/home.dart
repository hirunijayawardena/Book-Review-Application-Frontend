import 'package:book_review_app/book_review_form.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Book Reviews",
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 197, 160, 111),
            child: Stack(
              children: [
                const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Cursed Kiss",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
                Image.asset(
                  'assets/cursedChild.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100, // Adjust the height as needed
                ),
                
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 228, 220, 196),
            child: Stack(
              children: [
                const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Cursed Kiss",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
                Image.asset(
                  'assets/cursedChild.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100, // Adjust the height as needed
                ),
                
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 228, 220, 196),
            child: Stack(
              children: [
                const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Cursed Kiss",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
                Image.asset(
                  'assets/cursedChild.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100, // Adjust the height as needed
                ),
                
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 228, 220, 196),
            child: Stack(
              children: [
                const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Cursed Kiss",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
                Image.asset(
                  'assets/cursedChild.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100, // Adjust the height as needed
                ),
                
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 228, 220, 196),
            child: Stack(
              children: [
                const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Cursed Kiss",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
                Image.asset(
                  'assets/cursedChild.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100, // Adjust the height as needed
                ),
                
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 228, 220, 196),
            child: Stack(
              children: [
                const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Cursed Kiss",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
                Image.asset(
                  'assets/cursedChild.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100, // Adjust the height as needed
                ), 
              ],
            ),
          ),
          const SizedBox(height: 100),
          // ElevatedButton(
          //   style: style,
          //   onPressed: () {},
          //   child: const Text('Enabled'),
          // ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const BookReviewForm())
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 245, 174, 42),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text('Add Book Review'),
            ),
          ),
        ],
        
      ),
      

    );
  }
}