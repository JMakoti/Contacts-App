import 'package:contact_app/data/contact.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:faker/faker.dart';

class ContactsModel extends Model {
  //underscore is used to indicate that this variable is private
  late final List<Contact> _contacts = List.generate(50, (index) {
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

  //get method to access the private _contacts list
  // This allows read-only access to the contacts list
  List<Contact> get contacts => _contacts;

  void toggleFavorite(int index) {
    // Toggle the favorite status of the contact
    _contacts[index].isFavorite = !_contacts[index].isFavorite;

    _contacts.sort((a, b) {
      // Sort contacts by favorite status, then by name
      if (a.isFavorite) {
        return -1;
      } else if (b.isFavorite) {
        return 1;
      } else {
        return 0;
      }
    });
    notifyListeners();
  }
}
