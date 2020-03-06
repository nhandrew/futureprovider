import 'package:flutter/material.dart';
import 'package:future_provider/screens/home.dart';
import 'package:future_provider/services/employee_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final EmployeeService employeeService = EmployeeService();
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => employeeService.fetchemployees(),
      catchError: (context, error) {
        print(error.toString());
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
