import 'package:flutter/material.dart';

import 'animation_widgets/explicit_animation.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({
    super.key,
    required this.navigatorKeys,
  });

  final List<GlobalKey<State<StatefulWidget>>> navigatorKeys;

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.all(50),
      key: widget.navigatorKeys[1],
      height: sh,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          Text(
            "ABOUT...",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                  width: 200,
                  height: 200,
                  child: ExplicitAnimations(
                    child: Center(child: Text("Hello")),
                  )),
              Container(
                  width: 200,
                  height: 200,
                  child: ExplicitAnimations(
                    child: Center(child: Text("About Page")),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
