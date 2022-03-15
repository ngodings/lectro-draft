import 'package:flutter/material.dart';
import 'package:lectro_draft/constants.dart';

class MyHeader extends StatefulWidget {
  final String? textTop;
  final String? image;
  final String? textBottom;

  const MyHeader({
    Key? key,
    this.textTop,
    this.textBottom,
    this.image,
  }) : super(key: key);

  @override
  _MyHeaderState createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: const EdgeInsets.only(left: 40, top: 10, right: 20),
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              darkGreen,
              Color(0xFF8CB27A),
              Color(0xFFA6BE83),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "${widget.textTop} \n${widget.textBottom}",
              textAlign: TextAlign.right,
              style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  letterSpacing: -0.1,
                  color: Colors.white),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                      //top: (widget.offset < 0) ? 0 : widget.offset,
                      bottom: 40,
                      height: 180,
                      child: Image(image: AssetImage('${widget.image}'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
