import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Area Calculator', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAreaCalculator(),
          ),
        ),
      ),
    );
  }
}

class CircleAreaCalculator extends StatefulWidget {
  @override
  _CircleAreaCalculatorState createState() => _CircleAreaCalculatorState();
}

class _CircleAreaCalculatorState extends State<CircleAreaCalculator> {
  TextEditingController _radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _radiusController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Enter radius',
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            calculateArea(context);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Button color
            textStyle: TextStyle(color: Colors.white), // Text color
          ),
          child: Text('Calculate'),
        ),
      ],
    );
  }

  void calculateArea(BuildContext context) {
    double radius = double.tryParse(_radiusController.text) ?? 0.0;
    double area = pi * pow(radius, 2);

    // Display the result in a dialog box
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('information'),
          content: Text('The Area of the circle is: $area m²'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _radiusController.dispose();
    super.dispose();
  }
}
