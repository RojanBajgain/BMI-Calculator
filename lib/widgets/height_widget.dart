import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({
    super.key,
    required this.height,
    required this.onHeightChanged,
  });

  final int height;
  final Function(double) onHeightChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.width - 48) / 2,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Constant.cardBackgroundInactive,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HEIGHT',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Constant.textInactive,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.round().toString(),
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Constant.textActive,
                ),
              ),
              Text(
                'cm',
                style: TextStyle(
                  fontSize: 30,
                  color: Constant.textInactive,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    trackHeight: 1.0,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 15,
                    )),
                child: Slider(
                    value: height.toDouble(),
                    min: 150.0,
                    max: 210.0,
                    activeColor: Constant.textActive,
                    inactiveColor: Constant.textInactive,
                    thumbColor: Constant.action,
                    onChanged: onHeightChanged)),
          ),
        ],
      ),
    );
  }
}
