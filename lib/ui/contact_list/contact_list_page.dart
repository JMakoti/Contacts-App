import 'package:flutter/material.dart';
// import 'package:faker/faker.dart' as faker;
import 'package:faker/faker.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: ListView.builder(
        itemCount: 30,
        // Runs the builder function for each item in the list
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              faker.person.name(), // Generates a random name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
