import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:lectro_draft/constants.dart';

class SpinBoxWidget extends StatelessWidget {
  final String? title;
  final double? min;
  final double? max;
  final double? value;
  final int? decimals;
  final double? step;
  const SpinBoxWidget({
    Key? key,
    this.title,
    this.min,
    this.max,
    this.decimals,
    this.step,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
            width: constraint.maxWidth / 2 - 5,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(13),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  child: Column(
                    children: [
                      Text(
                        title!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          letterSpacing: 0.5,
                          color: darkGreen,
                        ),
                      ),
                      SpinBox(
                        min: min!,
                        max: max!,
                        value: value!,
                        decimals: decimals!,
                        step: step!,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(5),
                ),
              ),
            )),
      );
    });
  }
}
