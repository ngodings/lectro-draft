import 'package:flutter/material.dart';
import 'package:lectro_draft/constants.dart';

class WelcomeCard extends StatelessWidget {
  final String? title;
  final String? mainText;
  final String? subtitle;
  final String? images;
  const WelcomeCard(
      {Key? key, this.title, this.subtitle, this.images, this.mainText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                        topRight: Radius.circular(16.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: SizedBox(
                          height: 74,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  top: 16,
                                ),
                                child: Text(
                                  title!,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: kTextColor),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              bottom: 0,
                              top: 0,
                              right: 16,
                            ),
                            child: Text(
                              mainText!,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: kTextColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              bottom: 12,
                              top: 0,
                              right: 16,
                            ),
                            child: Text(
                              subtitle!,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: kTextColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -10,
                left: 0,
                child: SizedBox(
                  width: 600,
                  height: 140,
                  child: Image.asset(images!),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
