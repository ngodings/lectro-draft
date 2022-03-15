import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lectro_draft/constants.dart';
import 'package:lectro_draft/screen/bms/home.dart';
import 'package:lectro_draft/screen/bms/monitor_screen.dart';
import 'package:lectro_draft/screen/bms/setting_view.dart';

class DashboardBMS extends StatefulWidget {
  const DashboardBMS({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<DashboardBMS> createState() => _DashboardBMSState();
}

class _DashboardBMSState extends State<DashboardBMS> {
  int selectedIndex = 0;
  List<Widget> listWidgets = const [
    BMSHome(),
    MonitorScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        color: background,
        child: Scaffold(
          body: listWidgets[selectedIndex],
          bottomNavigationBar: ConvexAppBar.badge(
            const {0: ''},
            items: const [
              TabItem(
                icon: FontAwesomeIcons.home,
                title: 'Home',
              ),
              TabItem(
                icon: FontAwesomeIcons.laptopCode,
                title: 'Monitoring',
              ),
              TabItem(
                icon: FontAwesomeIcons.cogs,
                title: 'Setting',
              ),
            ],
            onTap: onItemTapped,
            activeColor: Colors.white,
            backgroundColor: darkGreen,
          ),
        ));
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
