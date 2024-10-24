import 'package:bmi_calculator/result/widgets/result_content_widget.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class ResultBodyWidget extends StatelessWidget {
  const ResultBodyWidget({
    super.key,
    required this.result,
  });

  final double result;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constant.background,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(72.0),
        child: ResultContentWidget(result: result),
      ),
    );
  }
}
