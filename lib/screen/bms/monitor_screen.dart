import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lectro_draft/constants.dart';
import 'package:lectro_draft/widgets/progress_bar_short.dart';

class MonitorScreen extends StatefulWidget {
  const MonitorScreen({Key? key}) : super(key: key);

  @override
  State<MonitorScreen> createState() => _MonitorScreenState();
}

class _MonitorScreenState extends State<MonitorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: const Color(0xFF18573A),
            elevation: 3.0,
            title: const Text(
              "Monitor",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                letterSpacing: 1.2,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: darkGreen,
          body: Stack(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  AspectRatio(
                    aspectRatio: 2.0,
                    child: Image.asset('assets/images/welcome.png'),
                  ),
                ],
              ),
              Positioned(
                top: (MediaQuery.of(context).size.width / 1.2) - 94.0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: background,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 6,
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 12.0, left: 18, right: 16),
                            child: Text(
                              'Monitor Cell',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                letterSpacing: 0.5,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: const <Widget>[
                                ProgressBar(
                                  title: "VPack",
                                  value: 50,
                                  batasBawah: 100,
                                  color: Colors.amber,
                                ),
                                ProgressBar(
                                  title: "VC1 ",
                                  value: 50,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC2 ",
                                  value: 60,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC3",
                                  value: 60,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC4 ",
                                  value: 30,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC5",
                                  value: 50,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC6",
                                  value: 60,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC7",
                                  value: 30,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC8",
                                  value: 50,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC9",
                                  value: 60,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC10",
                                  value: 30,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC11",
                                  value: 50,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC12",
                                  value: 60,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC13",
                                  value: 30,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC14",
                                  value: 30,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                ProgressBar(
                                  title: "VC15",
                                  value: 30,
                                  batasBawah: 100,
                                  color: Color(0xFF094C59),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 105,
                right: 35,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: const SizedBox(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.laptopHouse,
                        color: darkGreen,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
