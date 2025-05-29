import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_app_demo/screen/sections/eighth_section.dart';
import 'package:web_app_demo/screen/sections/fifth_section.dart';
import 'package:web_app_demo/screen/sections/forth_section.dart';
import 'package:web_app_demo/screen/sections/ninth_section.dart';
import 'package:web_app_demo/screen/sections/second_section.dart';
import 'package:web_app_demo/screen/sections/seventh_section.dart';
import 'package:web_app_demo/screen/sections/third_section.dart';

import '../bloc/screen_offset.dart';
import 'sections/first_sections.dart';
import 'sections/sixth_section.dart';

class WholeScreen extends StatefulWidget {
  const WholeScreen({super.key});

  @override
  State<WholeScreen> createState() => _WholeScreenState();
}

class _WholeScreenState extends State<WholeScreen> {
  late ScrollController controller;

  @override
  void initState() {
    controller = ScrollController();

    controller.addListener(() {
      context
          .read<DisplayOffset>()
          .changeDisplayOffset((MediaQuery.of(context).size.height + controller.position.pixels).toInt());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      children: [
        const FirstSection(),
        const SecondScreen(),
        const SizedBox(
          height: 100,
        ),
        const ThirdSection(),
        const SizedBox(
          height: 50,
        ),
        const ForthSection(),
        const SizedBox(
          height: 50.0,
        ),
        //FifthSection(),

        const SeventhSection(),

        Image.network("https://drive.usercontent.google.com/download?id=122X7enJkkpg2_7r7vWpaDKQW-8lov9eY&authuser=0"),
        /*SizedBox(
          height: 100.0,
        ),*/
        //EighthSection(),

        //SixthSection(),

        // NinthSection(),
      ],
    );
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("First"),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Text("Second"),
        ),
        Container(
          child: Text("Third"),
        ),
        Container(
          child: Text("data"),
        ),
        const Placeholder(),
        Placeholder(),
      ],
    );
  }
}
