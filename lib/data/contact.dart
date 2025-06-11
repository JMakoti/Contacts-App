class Contact {
  String name;
  String email;
  String phoneNumber;
  bool isFavorite;

  //constructor with optional paramenter
  Contact({
    this.isFavorite = false,
    required this.name,
    required this.email,
    required this.phoneNumber,
  });
}
