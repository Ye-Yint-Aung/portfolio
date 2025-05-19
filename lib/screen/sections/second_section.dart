import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_app_demo/utils/string.dart';

import '../../bloc/screen_offset.dart';
import '../../utils/colors.dart';
import '../widget/image_reveal.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> with TickerProviderStateMixin {
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
      reverseDuration: const Duration(
        milliseconds: 375,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.scaffoldColor,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            shape: BoxShape.rectangle,
            //color: MyColors.secondaryColor,
            color: Colors.black,
          ),
          child: BlocBuilder<DisplayOffset, ScrollOffset>(
            buildWhen: (previous, current) {
              //print('Build When:${current.scrollOffsetValue}');
              if ((current.scrollOffsetValue >= 500 && current.scrollOffsetValue <= 1200) || controller.isAnimating) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              // print('all:${state.scrollOffsetValue}');

              if (state.scrollOffsetValue > 800.0 && state.scrollOffsetValue > 1200.0) {
                // print('inside forward:${state.scrollOffsetValue}');
                controller.forward();
              } else {
                //print('inside reverse:${state.scrollOffsetValue}');
                controller.reverse();
              }
              return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ImageReveal('assets/images/link_in.png', "Link In",linkInLink),
                  ImageReveal('assets/images/github.png', "Github",gitHubLink),
                  ImageReveal('assets/images/facebook.png', "Facebook",faceBookLink),
                  ImageReveal('assets/images/telegram1.png', "Telegram",telegramLink),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
