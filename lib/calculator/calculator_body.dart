import 'package:bmi_calculator/calculator/calculate_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/models/body_model.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/int_picker_widget.dart';
import 'package:bmi_calculator/widgets/sex_widget.dart';
import 'package:flutter/material.dart';

import '../result/result_page.dart';

class CalculatorBody extends StatefulWidget {
  const CalculatorBody({super.key, required this.model});

  final BodyModel model;

  @override
  State<CalculatorBody> createState() => _CalculatorBodyState();
}

class _CalculatorBodyState extends State<CalculatorBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constant.background,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SexWidget(
              sex: widget.model.sex,
              onMaleTap: () => setState(() {
                widget.model.sex = Sex.male;
              }),
              onFemaleTap: () => setState(() {
                widget.model.sex = Sex.female;
              }),
            ),
            HeightWidget(
              height: widget.model.height,
              onHeightChanged: (height) => setState(() {
                widget.model.height = height.toInt();
              }),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.width - 48) / 2,
              child: Row(
                children: [
                  Expanded(
                    child: IntPickerWidget(
                      title: 'Weight',
                      onIncreaseTap: () => setState(() {
                        widget.model.weight++;
                      }),
                      onDecreaseTap: () => setState(() {
                        widget.model.weight--;
                      }),
                      value: widget.model.weight,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: IntPickerWidget(
                      title: 'Age',
                      onIncreaseTap: () => setState(() {
                        widget.model.age++;
                      }),
                      onDecreaseTap: () => setState(() {
                        widget.model.age--;
                      }),
                      value: widget.model.age,
                    ),
                  ),
                ],
              ),
            ),
            CalculateButton(onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => ResultPage(model: widget.model)),
                  ));
            })
          ],
        ),
      ),
    );
  }
}
