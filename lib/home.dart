import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(vertical: 5),
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.home),
                        color: Colors.white,
                        onPressed: () {
                          scrollToSection(navigatorKeys[0].currentContext!);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.description),
                        color: Colors.white,
                        onPressed: () {
                          scrollToSection(navigatorKeys[1].currentContext!);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.work),
                        color: Colors.white,
                        onPressed: () {
                          scrollToSection(navigatorKeys[2].currentContext!);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.contact_page),
                        color: Colors.white,
                        onPressed: () {
                          scrollToSection(navigatorKeys[3].currentContext!);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.location_on),
                        color: Colors.white,
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
