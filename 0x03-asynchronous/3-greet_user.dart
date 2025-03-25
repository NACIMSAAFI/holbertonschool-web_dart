import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);
    String username = user['username'];
    return 'Hello $username';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool credentialsValid = await checkCredentials();
    if (!credentialsValid) {
      print('There is a user: false');
      return 'Wrong credentials';
    } else {
      print('There is a user: true');
      return await greetUser();
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
