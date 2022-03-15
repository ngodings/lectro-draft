import 'package:flutter/material.dart';
import 'package:lectro_draft/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SimpleProgressBar extends StatelessWidget {
  final String? title;
  final double? value;
  final double? batasBawah;

  const SimpleProgressBar({Key? key, this.title, this.value, this.batasBawah})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double percent = (value! * 1.0) / batasBawah!;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 0, left: 5, right: 5),
            padding: const EdgeInsets.only(
              top: 16,
              right: 16,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.grey),
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        title!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          letterSpacing: -0.1,
                          color: darkGreen,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "$value °C",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        letterSpacing: -0.1,
                        color: darkGreen,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                LinearPercentIndicator(
                  animation: true,
                  animationDuration: 500,
                  lineHeight: 15.0,
                  percent: percent,
                  progressColor: const Color(0xFF094C59),
                  backgroundColor: Colors.grey[300],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
