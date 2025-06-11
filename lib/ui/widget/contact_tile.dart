import 'package:contact_app/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({super.key, required this.contactIndex});
  final int contactIndex;

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<ContactsModel>(context);
    final displayContact = model.contacts[contactIndex];
    return ListTile(
      title: Text(displayContact.name), // Displays the contact's name
      subtitle: Text(displayContact.email),
      trailing: IconButton(
        icon: Icon(
          displayContact.isFavorite ? Icons.star : Icons.star_border,
          color: displayContact.isFavorite ? Colors.yellow : Colors.grey,
        ),
        onPressed: () {
          model.toggleFavorite(contactIndex);
        },
      ),
    );
  }
}
