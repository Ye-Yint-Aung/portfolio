import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
    required this.navigatorKeys,
  });

  final List<GlobalKey<State<StatefulWidget>>> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.sizeOf(context).height;
    return Container(
      key: navigatorKeys[3],
      height: sh,
      width: double.infinity,
      color: Colors.cyan,
      child: Text(
        "CONTACT...",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
