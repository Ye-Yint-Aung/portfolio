import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/screen_offset.dart';
import '../../utils/colors.dart';
import '../widget/text_reveal.dart';

class SeventhSection extends StatefulWidget {
  const SeventhSection({super.key});

  @override
  State<SeventhSection> createState() => _SeventhSectionState();
}

class _SeventhSectionState extends State<SeventhSection> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> imageRevealAnimation;
  late Animation<double> textRevealAnimation;
  late Animation<double> subTextOpacityAnimation;
  late Animation<double> subImageRevealAnimation;
  late Animation<Offset> offsetImage;
  late Animation<Offset> transform;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1700,
      ),
      reverseDuration: const Duration(
        milliseconds: 375,
      ),
    );

    imageRevealAnimation = Tween<double>(begin: 500.0, end: 0.0)
        .animate(CurvedAnimation(parent: controller, curve: const Interval(0.0, 0.40, curve: Curves.easeOut)));

    textRevealAnimation = Tween<double>(begin: 70.0, end: 0.0)
        .animate(CurvedAnimation(parent: controller, curve: const Interval(0.30, 0.60, curve: Curves.easeOut)));

    subTextOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: controller, curve: const Interval(0.50, 0.80, curve: Curves.easeOut)));
    offsetImage = Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));
    transform = Tween<Offset>(begin: const Offset(10, 0), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));

    subImageRevealAnimation = Tween<double>(begin: 0.0, end: 90.0)
        .animate(CurvedAnimation(parent: controller, curve: const Interval(0.70, 1.0, curve: Curves.easeOut)));

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayOffset, ScrollOffset>(
      buildWhen: (previous, current) {
        if ((current.scrollOffsetValue > 3400 && current.scrollOffsetValue < 4000) || controller.isAnimating) {
          return true;
        } else {
          return false;
        }
      },
      builder: (context, state) {
        if (state.scrollOffsetValue >= 3550 && state.scrollOffsetValue <= 4200) {
          controller.forward();
        } else {
          controller.reverse();
        }
        return AnimatedBuilder(
          animation: textRevealAnimation,
          builder: (context, child) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: MyColors.darkColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Content Information",style: TextStyle(fontSize: 20,fontFamily: 'Times New Roman',color: Colors.white70),),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(onPressed: (){}, label: Row(children: [
                          Image.asset(
                            'assets/images/gmail.png' ,
                            width: 20,
                          ),
                          SizedBox(width: 20,),
                          Text("yeyintaung0057@gmail.com"),
                        ],)),
                        TextButton.icon(onPressed: (){}, label: Row(children: [
                          Image.asset(
                            'assets/images/viber.png' ,
                            width: 20,
                          ),
                          SizedBox(width: 20,),
                          Text("09 946 361 106"),
                        ],)),

                      ],
                    ),
                  ],
                )
                /*Positioned(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextReveal(
                          controller: controller,
                          maxHeight: 20,
                          child: const Text(
                            'Start Your Crypto Odyssey With Us',
                            style: TextStyle(
                              fontFamily: 'CH',
                              color: Color(0xff2A2A2A),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextReveal(
                          maxHeight: 200,
                          controller: controller,
                          child: const Text(
                            'Lorem ipsum dolor sit amet consectetur. Duis morbi scelerisque \nlectus sodales rhoncus.',
                            style: TextStyle(
                              fontFamily: 'CH',
                              color: Color(0xff2A2A2A),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextReveal(
                                maxHeight: 80,
                                controller: controller,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(150, 50),
                                    backgroundColor: MyColors.darkColor,
                                  ),
                                  child: const Text(
                                    'Get Started',
                                    style: TextStyle(
                                      fontFamily: 'CH',
                                      fontSize: 13,
                                      color: MyColors.secondaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            TextReveal(
                                maxHeight: 80,
                                controller: controller,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(150, 50),
                                      backgroundColor: MyColors.secondaryColor,
                                      side: const BorderSide(
                                          color: MyColors.darkColor)),
                                  child: const Text(
                                    'Learn more',
                                    style: TextStyle(
                                      fontFamily: 'CH',
                                      fontSize: 13,
                                      color: MyColors.darkColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),*/
                /* AnimatedPositioned(
                  curve: Curves.easeInCubic,
                  top: (state.scrollOffsetValue > 3600) ? 10 : 300,
                  right: (state.scrollOffsetValue > 3600) ? 250 : 200,
                  duration: const Duration(milliseconds: 900),
                  child: Image.asset(
                    'assets/images/earth1.png',
                    height: 100,
                  ),
                ),
                AnimatedPositioned(
                  curve: Curves.easeInOutQuart,
                  top: (state.scrollOffsetValue > 3700) ? 200 : 10,
                  right: (state.scrollOffsetValue > 3700) ? 100 : 20,
                  duration: const Duration(milliseconds: 1300),
                  child: Image.asset(
                    'assets/images/earth2.png',
                    height: 100,
                  ),
                ),
                AnimatedPositioned(
                  curve: Curves.easeOutCirc,
                  bottom: (state.scrollOffsetValue > 3700) ? 240 : 0,
                  left: (state.scrollOffsetValue > 3700) ? 100 : 250,
                  duration: const Duration(milliseconds: 1300),
                  child: Image.asset(
                    'assets/images/earth3.png',
                    height: 100,
                  ),
                ),
                AnimatedPositioned(
                  curve: Curves.easeOutCirc,
                  bottom: (state.scrollOffsetValue > 3730) ? 0 : 0,
                  left: (state.scrollOffsetValue > 3730) ? 80 : 0,
                  duration: const Duration(milliseconds: 1600),
                  child: Image.asset(
                    'assets/images/earth4.png',
                    height: 100,
                  ),
                )*/
              ],
            );
          },
        );
      },
    );
  }
}
