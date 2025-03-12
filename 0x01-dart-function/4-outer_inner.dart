void outer(String name, String id) {
  List<String> parts = name.split(" ");
  String firstName = parts[0];
  String lastNameInitial = parts[1][0] + ".";

  String inner() {
    return 'Hello Agent $lastNameInitial$firstName your id is $id';
  }

  print(inner());
}
