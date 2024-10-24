import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class IntPickerWidget extends StatelessWidget {
  const IntPickerWidget({
    super.key,
    required this.title,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
    required this.value,
  });

  final String title;
  final VoidCallback onIncreaseTap;
  final VoidCallback onDecreaseTap;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Constant.cardBackgroundInactive,
      ),
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Constant.textInactive,
            ),
          ),
          Text(
            value.toString(),
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w800,
              color: Constant.textActive,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: onDecreaseTap,
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constant.cardBackgroundActive,
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Constant.textActive,
                  ),
                ),
              ),
              InkWell(
                onTap: onIncreaseTap,
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constant.cardBackgroundActive,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Constant.textActive,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
