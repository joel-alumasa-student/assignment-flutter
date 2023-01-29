import 'package:assignment/myCustomForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// StartPage class
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // single child scroll view to allow scrolling
      body: SingleChildScrollView(
        child: Column(
          children: [
            // sizedboxes to create whitespace
            const SizedBox(
              width: double.infinity,
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.grey,
              child: Center(
                child: Text(
                  'Wahala Forms'.toUpperCase(),
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              // rotated box to rotate the child image widget
              child: RotatedBox(
                quarterTurns: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  // image widget
                  child: Image.asset('nightsky.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Register your Academic details and verify below.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: const Text(
                  'It is imperative that the information you enter is truthful and accurate according to your knowledge'),
            ),
          ],
        ),
      ),
      // A floating action button to approve the terms and reroute to the next page
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(
            context,
            // Rerouting to Registration Page
            MaterialPageRoute(builder: (context) => const MyCustomForm())
          );
        },
        label: const Text('Approve'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}