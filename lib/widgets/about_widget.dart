import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
     required this.navigatorKeys,
  });

  final List<GlobalKey<State<StatefulWidget>>> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.all(50),
      key: navigatorKeys[1],
      height: sh,
      width: double.infinity,
      color: Colors.grey,
      child: Text(
        "ABOUT...",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
