import 'package:flutter/material.dart';

class EnteringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Role'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'admin_signin');
                },
                child: Text('Admin'),
              ),
              SizedBox(height: 20), // Add some space between the buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'user_login');
                },
                child: Text('Student'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
