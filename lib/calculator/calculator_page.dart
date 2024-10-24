import 'package:bmi_calculator/calculator/calculator_body.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/models/body_model.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key, required this.title});

  final String title;

  final BodyModel model = BodyModel(
    sex: Sex.male,
    height: 183,
    weight: 74,
    age: 19,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Constant.background,
      ),
      body: CalculatorBody(model: model),
    );
  }
}
