import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lectro_draft/constants.dart';

class ProfilCard extends StatelessWidget {
  final String? images;
  final String? titleCard;
  final String? titleText;
  final String? subText;
  final String? status;
  final VoidCallback? press;

  const ProfilCard({
    Key? key,
    this.images,
    this.titleCard,
    this.titleText,
    this.subText,
    this.status,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          decoration: BoxDecoration(
            color: Colors.white,
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
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("$images"),
                  ),
                  const SizedBox(width: kDefaultPadding / 2),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "$titleCard \n",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: kTextColor,
                        ),
                        children: [
                          TextSpan(
                            text: "$titleText\n$subText",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: kTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "$status",
                        style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                      const SizedBox(height: 5),
                      InkWell(
                        onTap: press,
                        child: const Icon(
                          FontAwesomeIcons.cogs,
                          color: darkGreen,
                        ),
                      )
                      // if (email.isAttachmentAvailable)
                      //   WebsafeSvg.asset(
                      //     "assets/Icons/Paperclip.svg",
                      //     color: isActive ? Colors.white70 : kGrayColor,
                      //   )
                    ],
                  ),
                ],
              ),
              // SizedBox(height: kDefaultPadding / 2),
              // Text(
              //   "email.body",
              //   maxLines: 2,
              //   overflow: TextOverflow.ellipsis,
              //   style: Theme.of(context).textTheme.caption!.copyWith(
              //         height: 1.5,
              //         color: isActive ? Colors.white70 : null,
              //       ),
              // )
            ],
          ),
        )
      ],
    );
  }
}
