import 'package:flutter/material.dart';

// Define a class
class Student {
  // Properties
  String name;
  int age;
  double marks;

  // Constructor
  Student(this.name, this.age, this.marks);

  // Method to check if the student has passed
  bool hasPassed() {
    return marks >= 40.0;
  }
}

void main() {
  runApp(MyApp());
}

// Main Flutter app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Class Example',
      home: StudentScreen(),
    );
  }
}

// StudentScreen displays the students' details
class StudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create student objects
    Student student1 = Student("Pallavi", 22, 85.5);
    Student student2 = Student("Rahul", 20, 35.0);

    return Scaffold(
      appBar: AppBar(
        title: Text("Dart Class Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Student 1:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text("Name: ${student1.name}"),
            Text("Age: ${student1.age}"),
            Text("Marks: ${student1.marks}"),
            Text("Has Passed: ${student1.hasPassed() ? 'Yes' : 'No'}"),
            SizedBox(height: 20), // Space between entries
            Text(
              "Student 2:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text("Name: ${student2.name}"),
            Text("Age: ${student2.age}"),
            Text("Marks: ${student2.marks}"),
            Text("Has Passed: ${student2.hasPassed() ? 'Yes' : 'No'}"),
          ],
        ),
      ),
    );
  }
}
