import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/models/body_model.dart';
import 'package:bmi_calculator/result/widgets/result_body_widget.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.model,
  });

  final BodyModel model;

  @override
  Widget build(BuildContext context) {
    final result = calculateBMI(bodyModel: model);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RESULT',
        ),
        backgroundColor: Constant.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ResultBodyWidget(result: result),
    );
  }
}
