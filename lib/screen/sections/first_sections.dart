import 'package:flutter/material.dart';
import 'package:web_app_demo/screen/sections/second_section.dart';

import '../../utils/colors.dart';
import '../widget/text_reveal.dart';
import '../widget/text_transform.dart';

class FirstSection extends StatefulWidget {
  const FirstSection({super.key});

  @override
  State<FirstSection> createState() => _FirstSectionState();
}

class _FirstSectionState extends State<FirstSection> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> textRevealAnimation;
  late Animation<double> textOpacityAnimation;
  late Animation<double> descriptionAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1700,
      ),
      reverseDuration: const Duration(
        milliseconds: 375,
      ),
    );

    textRevealAnimation = Tween<double>(begin: 60.0, end: 0.0)
        .animate(CurvedAnimation(parent: controller, curve: const Interval(0.0, 0.2, curve: Curves.easeOut)));

    textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: controller, curve: const Interval(0.0, 0.3, curve: Curves.easeOut)));
    Future.delayed(const Duration(milliseconds: 1000), () {
      controller.forward();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(color: MyColors.scaffoldColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 90, top: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextReveal(
                    maxHeight: 100,
                    controller: controller,
                    textOpacityAnimation: textOpacityAnimation,
                    textRevealAnimation: textRevealAnimation,
                    child: const Text(
                      'Ye Yint Aung',
                      style:
                          TextStyle(fontFamily: 'CH', fontSize: 45, color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ),
                  TextReveal(
                    maxHeight: 100,
                    controller: controller,
                    textOpacityAnimation: textOpacityAnimation,
                    textRevealAnimation: textRevealAnimation,
                    child: const Text(
                      'Flutter Developer',
                      style:
                          TextStyle(fontFamily: 'CH', fontSize: 45, color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextTransform(
                    maxHeight: 100,
                    controller: controller,
                    textOpacityAnimation: textOpacityAnimation,
                    //textRevealAnimation: textRevealAnimation,
                    child: const Text(
                      'Lorem ipsum dolor sit amet consectetur. Duis morbi scelerisque lectus sodales rhoncus.',
                      style:
                          TextStyle(fontFamily: 'CH', fontSize: 13, color: Colors.white, fontWeight: FontWeight.w200),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(150, 50), backgroundColor: MyColors.secondaryColor),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontFamily: 'CH',
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(150, 50),
                            backgroundColor: Colors.transparent,
                            side: const BorderSide(color: MyColors.secondaryColor)),
                        child: const Text(
                          'Learn more',
                          style: TextStyle(
                            fontFamily: 'CH',
                            fontSize: 13,
                            color: MyColors.secondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Expanded(flex: 5, child: FirstPageImage()),
          //SecondScreen()
        ],
      ),
    );
  }
}

class FirstPageImage extends StatefulWidget {
  const FirstPageImage({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstPageImage> createState() => _FirstPageImageState();
}

class _FirstPageImageState extends State<FirstPageImage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 775));

    _animation =
        Tween<double>(begin: 920.0, end: 0.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    super.initState();
    Future.delayed(const Duration(milliseconds: 375), () {
      if (_controller.isDismissed) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              height: 600.0,
              width: double.infinity,
              child: child,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: _animation.value,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      MyColors.scaffoldColor,
                      MyColors.secondaryColor,
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
              ),
            ),
          ],
        );
      },
      child: Transform.scale(
        scale: 0.6,
        child: Image.network(
            "https://static.vecteezy.com/system/resources/previews/034/585/785/non_2x/ai-generative-confident-young-businessman-in-suit-standing-with-arms-folded-free-photo.jpg",
        ),
        /*child: Image.asset(
          'assets/images/flutter_logo.png',
          fit: BoxFit.cover,
        ),*/
      ),
    );
  }
}
