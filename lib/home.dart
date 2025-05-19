import 'package:flutter/material.dart';
import 'package:web_app_demo/utils/styles.dart';
import 'package:web_app_demo/widgets/contact_widget.dart';
import 'package:web_app_demo/widgets/experience_widget.dart';
import 'package:web_app_demo/widgets/home_widget.dart';
import 'package:web_app_demo/widgets/location_widget.dart';

import 'widgets/about_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final scrollController = ScrollController();
  final List<GlobalKey> navigatorKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  void scrollToSection(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Hello...............");
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: Container(
                //margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration:  BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.white),
                  gradient: LinearGradient(
                      colors: [Colors.white12, Colors.black],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.5, 0.0),
                      stops: [0.0, 1.0],
                      //tileMode: TileMode.clamp
                  ),
                ),
                //width: 300,
                /*decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(30),
                ),*/
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child: Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,

                            fontFamily: bodoniFont,
                          ),
                        ),
                        //color: Colors.white,
                        onPressed: () {
                          scrollToSection(navigatorKeys[0].currentContext!);
                        },
                      ),
                      TextButton(
                        child: const Text(
                          "About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,

                            fontFamily: bodoniFont,
                          ),
                        ),
                        //color: Colors.white,
                        onPressed: () {
                          scrollToSection(navigatorKeys[1].currentContext!);
                        },
                      ),
                      TextButton(
                        child: Text(
                          "Project Experience",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,

                            fontFamily: bodoniFont,
                          ),
                        ),
                        //color: Colors.white,
                        onPressed: () {
                          scrollToSection(navigatorKeys[2].currentContext!);
                        },
                      ),
                      TextButton(
                        child: const Text(
                          "Tool & Tech",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,

                            fontFamily: bodoniFont,
                          ),
                        ),
                        //color: Colors.white,
                        onPressed: () {
                          scrollToSection(navigatorKeys[3].currentContext!);
                        },
                      ),
                      TextButton(
                        child: const Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,

                            fontFamily: bodoniFont,
                          ),
                        ),
                        //color: Colors.white,
                        onPressed: () {
                          scrollToSection(navigatorKeys[4].currentContext!);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            HomeWidget(navigatorKeys: navigatorKeys),
                            AboutWidget(navigatorKeys: navigatorKeys),
                            ExperienceWidget(navigatorKeys: navigatorKeys),
                            ContactWidget(navigatorKeys: navigatorKeys),
                            LocationWidget(navigatorKeys: navigatorKeys),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
