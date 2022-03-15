import 'package:flutter/material.dart';
import 'package:lectro_draft/constants.dart';

class SmallCard extends StatelessWidget {
  final VoidCallback? press;
  final String? images;
  final String? title;
  const SmallCard({
    Key? key,
    this.press,
    this.images,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: background,
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
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      images!,
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: kDefaultPadding),
                    Text(
                      title!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: kTextColor,
                          ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
