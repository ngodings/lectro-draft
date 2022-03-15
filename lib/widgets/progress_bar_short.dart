import 'package:flutter/material.dart';
import 'package:lectro_draft/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  final String? title;
  final double? value;
  final double? batasBawah;
  final Color? color;
  const ProgressBar(
      {Key? key, this.title, this.value, this.batasBawah, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double percent = (value! * 1.0) / batasBawah!;
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
            width: constraint.maxWidth / 2 - 5,

            // constraint.maxWidth provide us the available with for this widget
            // padding: EdgeInsets.all(16),
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
                      progressColor: color,
                      backgroundColor: Colors.grey[300],
                    ),
                  ],
                ),
              ),
            )),
      );
    });
  }
}
