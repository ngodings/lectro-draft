import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:lectro_draft/constants.dart';
import 'package:lectro_draft/widgets/curve_painter.dart';

class MonitorCard extends StatefulWidget {
  final List<String>? title;
  final List<String>? date;
  final List<double>? batasAtas;
  final List<double>? batasBawah;
  final List<VoidCallback>? onTap;
  final List<String>? satuan;
  final int? count;
  const MonitorCard(
      {Key? key,
      this.title,
      this.date,
      this.batasAtas,
      this.batasBawah,
      this.onTap,
      this.satuan,
      this.count})
      : super(key: key);

  @override
  State<MonitorCard> createState() => _MonitorCardState();
}

class _MonitorCardState extends State<MonitorCard> {
  late List<String>? title;
  late List<double>? batasAtas;
  late List<double>? batasBawah;
  late int? count;
  late List<VoidCallback>? onTap;
  late List<String>? satuan;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          height: 210,
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
          child: Swiper(
            itemCount: widget.count!,
            itemWidth: MediaQuery.of(context).size.width - 2 * 30,
            layout: SwiperLayout.STACK,
            pagination: const SwiperPagination(
              builder: DotSwiperPaginationBuilder(activeSize: 0, space: 0),
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 10, right: 16),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, bottom: 2),
                                        child: Text(
                                          widget.title![index],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                              letterSpacing: -0.1,
                                              color: Color(0xFF52796F)),
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 3,
                                width: constraint.maxWidth / 2 - 30,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                ),
                              ),
                            ],
                          ),
                          // const SizedBox(
                          //   height: 16,
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Stack(clipBehavior: Clip.none, children: <
                                        Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(100.0),
                                            ),
                                            border: Border.all(
                                                width: 4,
                                                color: Colors.blueGrey
                                                    .withOpacity(0.2)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                widget.batasAtas![index]
                                                    .toString(),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Text(
                                                widget.satuan![index],
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  letterSpacing: 0.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: CustomPaint(
                                          painter: CurvePainter(
                                              colors: const [
                                                Color(0xff13d38e),
                                                Color(0xFF094C59),
                                                //angle: (360 * energy!) / batas!)
                                              ],
                                              angle: (360 *
                                                      widget
                                                          .batasAtas![index]) /
                                                  widget.batasBawah![index]),
                                          child: const SizedBox(
                                            width: 108,
                                            height: 108,
                                          ),
                                        ),
                                      )
                                    ]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              );
            },
          ),
        ),
      );
    });
  }
}
