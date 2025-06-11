import 'package:contact_app/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/ui/widget/contact_tile.dart';
import 'package:scoped_model/scoped_model.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  // build runs wen the state changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: ScopedModelDescendant<ContactsModel>(
        //runs wen notifyModel() is called from the model
        builder: (context, child, model) {
          return ListView.builder(
            itemCount:
                model.contacts.length, // Sets the number of items in the list
            // Runs the builder function for each item in the list
            itemBuilder: (context, index) {
              return ContactTile(contactIndex: index);
            },
          );
        },
      ),
    );
  }
}
