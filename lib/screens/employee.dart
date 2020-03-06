import 'package:flutter/material.dart';
import 'package:future_provider/models/employee.dart';
import 'package:future_provider/services/employee_service.dart';
import 'package:provider/provider.dart';

class EmployeePage extends StatelessWidget {
  final int id;
  final String name;
  final EmployeeService employeeService = EmployeeService();

  EmployeePage({@required this.id, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: FutureProvider( 
        create: (context) => employeeService.fetchemployee(id),
        child:  Center(child: Consumer<Employee>( 
          builder: (context, employee, widget) {
            return (employee !=null) ? Text('Employee Phone: ${employee.phone}')
            : CircularProgressIndicator();
          },
        )
        ,),
      )
    );
  }
}