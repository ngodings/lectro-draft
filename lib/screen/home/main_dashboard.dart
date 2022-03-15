import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lectro_draft/constants.dart';
import 'package:lectro_draft/screen/bms/dashboard.dart';
import 'package:lectro_draft/screen/bms/home.dart';
import 'package:lectro_draft/widgets/header.dart';
import 'package:lectro_draft/widgets/profil_card.dart';
import 'package:lectro_draft/widgets/small_card.dart';
import 'package:lectro_draft/widgets/title_widget.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  var SvgPicture;

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Container(
      color: background,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: const Color(0xFF18573A),
            elevation: 3.0,
            title: const Text(
              "Main Dashboard",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                letterSpacing: 1.2,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      const MyHeader(
                        textTop: "Welcome to lectro app!",
                        textBottom: "",
                        image: "assets/images/welcome.png",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 10),
                        child: ProfilCard(
                          images: "assets/images/p1.jpg",
                          titleCard: "Profil",
                          titleText: "User Beta",
                          subText: "username",
                          status: "Active",
                          press: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) {
                            //     return DetailsScreen();
                            //   }),
                            // );
                          },
                        ),
                      ),
                      const TitleView(
                        titleTxt: "Pick one for monitoring",
                        icons: Icon(FontAwesomeIcons.laptopHouse),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: <Widget>[
                            SmallCard(
                              title: "EMS",
                              press: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => const BMSHome()),
                                );
                              },
                              images: "assets/images/ems.png",
                            ),
                            SmallCard(
                              title: "BMS",
                              press: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => const DashboardBMS(
                                            title: '',
                                          )),
                                );
                              },
                              images: "assets/images/bms.png",
                            ),
                          ],
                        ),
                      )
                      // Expanded(
                      //   child: GridView.count(
                      //     crossAxisCount: 2,
                      //     //childAspectRatio: .95,
                      //     crossAxisSpacing: 0,
                      //     mainAxisSpacing: 0,
                      //     children: <Widget>[
                      //       Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: CategoryCard(
                      //           title: "BMS",
                      //           images: "assets/images/bms.png",
                      //           press: () {},
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: CategoryCard(
                      //           title: "EMS",
                      //           images: "assets/images/ems.png",
                      //           press: () {},
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
