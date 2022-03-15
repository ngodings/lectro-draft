import 'package:flutter/material.dart';

import 'package:lectro_draft/constants.dart';

class CategoryCard extends StatelessWidget {
  final String? images;
  final String? title;
  final VoidCallback? press;
  const CategoryCard({
    Key? key,
    this.title,
    this.press,
    this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topRight: Radius.circular(8.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 10.0),
          ],
        ),
        child: Material(
          color: background,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Image.asset(
                    images!,
                    height: 110,
                    width: 140,
                  ),
                  // const Spacer(),
                  Text(
                    title!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: kTextColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
