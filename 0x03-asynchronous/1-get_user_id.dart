import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String data = await fetchUserData();
  return jsonDecode(data)['id'];
}
