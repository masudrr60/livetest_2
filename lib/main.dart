import 'package:flutter/material.dart';

void main() {
  runApp( EmployeeApp());
}
class EmployeeApp extends StatelessWidget {
   EmployeeApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddEmployeeScreen(),
    );
  }
}
class AddEmployeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Employee",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
             TextField(
              decoration: InputDecoration(
                labelText: "Name",
                border: UnderlineInputBorder(),
              ),
            ),
             SizedBox(height: 10),
             TextField(
              decoration: InputDecoration(
                labelText: "Age",
                border: UnderlineInputBorder(),
              ),
            ),
             SizedBox(height: 10),
              TextField(
              decoration: InputDecoration(
                labelText: "Salary",
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.purple,
                elevation: 2,
                padding:  EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child:  Text(
                "Add Employee",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
