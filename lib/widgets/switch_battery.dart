import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lectro_draft/constants.dart';
import 'package:rolling_switch/rolling_switch.dart';

class SwitchBattery extends StatefulWidget {
  const SwitchBattery({Key? key}) : super(key: key);

  @override
  State<SwitchBattery> createState() => _SwitchBatteryState();
}

class _SwitchBatteryState extends State<SwitchBattery> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 12, right: 12),
      child: Container(
        margin: const EdgeInsets.only(top: 0, left: 5, right: 5),
        padding: const EdgeInsets.only(
          top: 16,
          left: 10,
          right: 16,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(
              height: 20,
              width: 30,
              child: Icon(
                FontAwesomeIcons.powerOff,
                color: darkGreen,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Power",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        letterSpacing: -0.1,
                        color: darkGreen,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RollingSwitch.icon(
              onChanged: (bool state) {
                // ignore: avoid_print
                print(' turned ${(state) ? 'on' : 'off'}');
              },
              rollingInfoRight: const RollingIconInfo(
                icon: Icons.battery_alert,
                text: Text('On'),
              ),
              rollingInfoLeft: const RollingIconInfo(
                icon: Icons.battery_unknown,
                backgroundColor: Colors.grey,
                text: Text('Off'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
