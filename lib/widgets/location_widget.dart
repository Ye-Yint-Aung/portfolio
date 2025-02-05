import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
    required this.navigatorKeys,
  });

  final List<GlobalKey<State<StatefulWidget>>> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.sizeOf(context).height;
    return Container(
      key: navigatorKeys[4],
      height: sh,
      width: double.infinity,
      color: Colors.blueGrey,
      child: Text(
        "LOCATION...",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
