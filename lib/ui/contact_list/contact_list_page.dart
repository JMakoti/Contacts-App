import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:contact_app/data/contact.dart';

class ContactListPage extends StatefulWidget {

 const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  //underscore is used to indicate that this variable is private
  final List<Contact> _contacts = List.generate(50, (index) {
    return Contact(
      name: faker.person.name(),
      email: faker.internet.email(),
      phoneNumber:
          faker.randomGenerator
              .integer(
                1000000000, // Minimum 10-digit number
              )
              .toString(),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: ListView.builder(
        itemCount: _contacts.length, // Sets the number of items in the list
        // Runs the builder function for each item in the list
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_contacts[index].name), // Displays the contact's name
            subtitle: Text(
              _contacts[index].email,
            ), // Displays the contact's email
          );
        },
      ),
    );
  }
}
