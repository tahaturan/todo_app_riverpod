// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String id;
  String name;
  String image;
  User({required this.id, required this.name, required this.image});

  static User dummuyUser() {
    return User(id: '1235', name: 'Taha', image: 'profile');
  }
}
