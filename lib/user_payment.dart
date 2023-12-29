import 'package:flutter/material.dart';

class PaymentWays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Payment Ways'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add navigation logic here to go back
              Navigator.pop(context, 'user_Transport');
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center images horizontally
          children: [
            // Center the first image
            Center(
              child: Image.asset(
                'assets/bkash.jpg',
                width: 200, // Set the desired width
                // You can also set height if needed
              ),
            ),
            SizedBox(height: 16), // Add spacing between images if needed

            // Center the second image
            Center(
              child: Image.asset(
                'assets/nogod.png',
                width: 200, // Set the desired width
                // You can also set height if needed
              ),
            ),
            SizedBox(height: 16),

            // Center the third image
            Center(
              child: Image.asset(
                'assets/rocket.png',
                width: 200, // Set the desired width
                // You can also set height if needed
              ),
            ),
            // Add additional widgets or content below the images if needed
          ],
        ),
      ),
    );
  }
}


