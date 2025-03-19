import '6-password.dart';

class User extends Password{
  int id;
  String name;
  int age;
  double height;
  String user_password;

  User({required this.id, required this.name, required this.age, required this.height, required this.user_password,}) : super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'] ?? 0,
        name: userJson['name'] ?? 'Unknown',
        age: userJson['age'] ?? 0,
        height: userJson['height'] ?? 0.0,
        user_password: userJson['user_password'] ?? '',
    );
  }

  @override
  String toString() =>
    "User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, Password valid: ${isValid()})";
}
