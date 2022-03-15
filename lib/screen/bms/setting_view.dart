import 'package:flutter/material.dart';
import 'package:lectro_draft/constants.dart';
import 'package:lectro_draft/widgets/default_button.dart';
import 'package:lectro_draft/widgets/spin_box.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color(0xFF18573A),
          elevation: 3.0,
          title: const Text(
            "Setting",
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 6,
                        ),
                        // const Padding(
                        //   padding:
                        //       EdgeInsets.only(top: 12.0, left: 18, right: 16),
                        //   child: Text(
                        //     'Setting',
                        //     textAlign: TextAlign.left,
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.w700,
                        //       fontSize: 20,
                        //       letterSpacing: 0.5,
                        //       color: Colors.black54,
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 0, right: 0, bottom: 8),
                          child: Wrap(
                            spacing: 0,
                            runSpacing: 0,
                            children: const <Widget>[
                              SpinBoxWidget(
                                title: "VCMIN",
                                min: 0.0,
                                max: 100.0,
                                decimals: 0,
                                step: 1,
                                value: 12,
                              ),
                              SpinBoxWidget(
                                title: "VCMAX",
                                min: 0.0,
                                max: 100.0,
                                decimals: 0,
                                step: 1,
                                value: 12,
                              ),
                              SpinBoxWidget(
                                title: "IMAX",
                                min: 0.0,
                                max: 100.0,
                                decimals: 0,
                                step: 1,
                                value: 12,
                              ),
                              SpinBoxWidget(
                                title: "TMAX",
                                min: 0.0,
                                max: 100.0,
                                decimals: 0,
                                step: 1,
                                value: 12,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DefaultButton(
                          text: "Save",
                          press: () {},
                        )
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
                      FontAwesomeIcons.cogs,
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
    );
  }
}

class HorizontalSpinBoxPage extends StatelessWidget {
  const HorizontalSpinBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          child: SpinBox(
            value: 10,
            decoration: const InputDecoration(labelText: 'Basic'),
          ),
          padding: const EdgeInsets.all(16),
        ),
        Padding(
          child: SpinBox(
            value: 10,
            readOnly: true,
            decoration: const InputDecoration(labelText: 'Read-only'),
          ),
          padding: const EdgeInsets.all(16),
        ),
        Padding(
          child: SpinBox(
            max: 10.0,
            value: 5.0,
            decimals: 1,
            step: 0.1,
            decoration: const InputDecoration(labelText: 'Decimals'),
          ),
          padding: const EdgeInsets.all(16),
        ),
        Padding(
          child: SpinBox(
            min: -1.0,
            max: 1.0,
            value: 0.25,
            decimals: 3,
            step: 0.001,
            acceleration: 0.001,
            decoration: const InputDecoration(labelText: 'Accelerated'),
          ),
          padding: const EdgeInsets.all(16),
        ),
        Padding(
          child: SpinBox(
            value: 50,
            decoration: const InputDecoration(
              hintText: 'Hint',
              labelText: 'Decorated',
              helperText: 'Helper',
              prefixText: 'Prefix',
              suffixText: 'Suffix',
              counterText: 'Counter',
            ),
            validator: (text) => text!.isEmpty ? 'Invalid' : null,
          ),
          padding: const EdgeInsets.all(16),
        ),
      ],
    );
  }
}
