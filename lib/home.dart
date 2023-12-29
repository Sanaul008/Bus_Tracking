import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: StackedList(),
    );
  }
}

class StackedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListItem(title: 'Transport'),
        ListItem(title: 'Registration'),
        ListItem(title: 'Advising'),
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;

  ListItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          // Implement the action you want to perform when an item is tapped.
          // For now, you can display a dialog.
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Selected Item'),
                content: Text('You selected: $title'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'Transport');
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}