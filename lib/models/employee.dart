class Employee {
  final int id;
  final String name;
  final String phone;
  final String email;

  Employee({this.email,this.id,this.name, this.phone});

  Employee.fromJson(Map<String, dynamic> parsedJson)
    : id = parsedJson['id'],
      name = parsedJson['name'],
      email = parsedJson['email'],
      phone = parsedJson['phone'];
}