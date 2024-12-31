import 'package:book_review_app/book_review_form.dart';
import 'package:book_review_app/edit_review.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  String _searchTerm = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _showSearchBar() {
    setState(() {
      print('serach clicked');
      _searchTerm = '';
      _searchController.text = _searchTerm;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Book Reviews",
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: _showSearchBar,
          ),
        ],
      ),
      body: Column(
        children: [
          if (_searchTerm.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: "Search reviews",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  setState(() {
                    _searchTerm = value;
                  });
                },
              ),
            ),

          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EditReview())
                  );
                },
                child: Container(
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
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EditReview())
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: const Color.fromARGB(255, 228, 220, 196),
                  child: Stack(
                    children: [
                      const Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Text(
                          "The Adventures of Sherlock Holms",
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                      Image.asset(
                        'assets/AdventuresOfSH.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 100, // Adjust the height as needed
                      ),                    
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EditReview())
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: const Color.fromARGB(255, 228, 220, 196),
                  child: Stack(
                    children: [
                      const Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Text(
                          "Jane Eyre",
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                      Image.asset(
                        'assets/JaneEyre.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 100, // Adjust the height as needed
                      ),                  
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EditReview())
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: const Color.fromARGB(255, 228, 220, 196),
                  child: Stack(
                    children: [
                      const Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Text(
                          "Harry Potter and Order of Phoenix",
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                      Image.asset(
                        'assets/OrderOfPhoenix.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 100, // Adjust the height as needed
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EditReview())
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: const Color.fromARGB(255, 228, 220, 196),
                  child: Stack(
                    children: [
                      const Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Text(
                          "Harry Potter and Philosopher's Stone",
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                      Image.asset(
                        'assets/PhilosophersStone.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 100, // Adjust the height as needed
                      ),                  
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EditReview())
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: const Color.fromARGB(255, 228, 220, 196),
                  child: Stack(
                    children: [
                      const Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Text(
                          "The Secret Garden",
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                      Image.asset(
                        'assets/SecretGarden.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 100, // Adjust the height as needed
                      ), 
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 100),

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
        ),      
      ],),
    );
  }
}
