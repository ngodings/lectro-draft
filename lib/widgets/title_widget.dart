import 'package:flutter/material.dart';
import 'package:lectro_draft/constants.dart';

class TitleView extends StatelessWidget {
  final String? titleTxt;

  final Icon? icons;

  const TitleView({
    Key? key,
    this.titleTxt,
    this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              titleTxt!,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                letterSpacing: 0.5,
                color: kTitleTextColor,
              ),
            ),
          ),
          InkWell(
            highlightColor: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: <Widget>[
                  icons!,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
