import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/body_model.dart';

class SexWidget extends StatelessWidget {
  const SexWidget({
    super.key,
    required this.sex,
    required this.onMaleTap,
    required this.onFemaleTap,
  });

  final Sex sex;
  final VoidCallback onMaleTap;
  final VoidCallback onFemaleTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.width - 48) / 2,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onMaleTap,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: sex == Sex.male
                      ? Constant.cardBackgroundActive
                      : Constant.cardBackgroundInactive,
                ),
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male_rounded,
                      size: 100,
                      color: sex == Sex.male
                          ? Constant.textActive
                          : Constant.textInactive,
                    ),
                    Text(
                      'MALE',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: sex == Sex.male
                            ? Constant.textActive
                            : Constant.textInactive,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: GestureDetector(
              onTap: onFemaleTap,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: sex == Sex.female
                      ? Constant.cardBackgroundActive
                      : Constant.cardBackgroundInactive,
                ),
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.female_rounded,
                      size: 100,
                      color: sex == Sex.female
                          ? Constant.textActive
                          : Constant.textInactive,
                    ),
                    Text(
                      'FEMALE',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: sex == Sex.female
                            ? Constant.textActive
                            : Constant.textInactive,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
