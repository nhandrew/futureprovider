import 'package:flutter/material.dart';
import 'package:future_provider/screens/employee.dart';
import 'package:provider/provider.dart';
import '../models/employee.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Employee> employees = Provider.of<List<Employee>>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Employees'),
      ),
      body: (employees == null)
      ? Center(child: CircularProgressIndicator(),)
      : ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context,index){
          return ListTile( 
            subtitle: Text(employees[index].email),
            title: Text(employees[index].name),
            onTap: () {
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EmployeePage(id: employees[index].id,name: employees[index].name,)));
            },
          );
        })
    );
  }
}