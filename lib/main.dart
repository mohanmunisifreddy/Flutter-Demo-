import 'package:flutter/material.dart';
import 'package:hello_rectangle/category.dart';

const _categoryName = "Cake";
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;
var bgColor = Colors.green[100];

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unit Converter", style: TextStyle(fontSize: 30.0, color: Colors.black),),
          backgroundColor: bgColor,
          elevation: 0.0,
          centerTitle: true,
        ),
        backgroundColor: bgColor,
        body: Center(
          child: Category(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon
          ),
        ),
      ),
    );
  }
}