import 'dart:math';

import 'package:bmi_calculator/models/body_model.dart';

double calculateBMI({required BodyModel bodyModel}) {
  return (bodyModel.weight) / pow(bodyModel.height / 100, 2);
}
