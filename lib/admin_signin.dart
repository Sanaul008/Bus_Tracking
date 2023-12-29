import 'package:flutter/material.dart';



class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Admin Name Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Admin Name',
              ),
            ),
            SizedBox(height: 16.0),

            // Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 32.0),

            // Arrow Icon Button
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context,'admin_home');
              },
              icon: Icon(Icons.arrow_forward),
              label: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
