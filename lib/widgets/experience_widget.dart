import 'package:flutter/material.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    super.key,
    required this.navigatorKeys,
  });

  final List<GlobalKey<State<StatefulWidget>>> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.sizeOf(context).height;
    return Container(
      key: navigatorKeys[2],
      height: sh,
      width: double.infinity,
      color: Colors.blue,
      child: Text(
        "EXPERIENCE...",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
