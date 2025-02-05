import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
    required this.navigatorKeys,
  });

  final List<GlobalKey<State<StatefulWidget>>> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.sizeOf(context).height;
    double sWidth = MediaQuery.sizeOf(context).width;
    const colorizeColors = [
      Colors.white,
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    return Container(
        key: navigatorKeys[0],
        height: sHeight,
        width: sWidth,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              color: Colors.black,
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 9 / 12,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(width: 0.5, color: Colors.white)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://image.tensorartassets.com/cdn-cgi/image/anim=false,plain=false,w=320,q=85/posts/images/718319300410229872/ad418c1b-0cf4-4a75-ac67-728ee14e0471.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Ye Yint Aung aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 370,
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.black,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        ColorizeAnimatedText(
                          'YE YINT AUNG',
                          textStyle: Theme.of(context).textTheme.headlineLarge!,
                          colors: colorizeColors,
                        ),
                      ],
                    ),
                    SizedBox(
                      child: DefaultTextStyle(
                        style: const TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
                        child: AnimatedTextKit(
                          pause: const Duration(milliseconds: 2000),
                          repeatForever: true,
                          animatedTexts: [
                            TyperAnimatedText('MOBILE APP DEVELOPER'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
