import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/screen_offset.dart';
import '../../model/items.dart';
import '../../utils/colors.dart';
import '../../utils/string.dart';
import '../widget/item_card.dart';
import '../widget/text_reveal.dart';

class ForthSection extends StatefulWidget {
  const ForthSection({super.key});

  @override
  State<ForthSection> createState() => _ForthSectionState();
}

class _ForthSectionState extends State<ForthSection> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> transform;

  @override
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
    transform = Tween<Offset>(begin: const Offset(10, 0), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));
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
    return Column(
      children: [
        BlocBuilder<DisplayOffset, ScrollOffset>(
          buildWhen: (previous, current) {
            if ((current.scrollOffsetValue >= 1500 && current.scrollOffsetValue <= 2600) || controller.isAnimating) {
              return true;
            } else {
              return false;
            }
          },
          builder: (context, state) {
            if (state.scrollOffsetValue > 1500.0) {
              controller.forward();
            } else {
              controller.reverse();
            }
            return Column(
              children: [
                TextReveal(
                  controller: controller,
                  maxHeight: 70.0,
                  child: const Text(
                    'EXPERIENCE PROJECTS',
                    style: TextStyle(
                      fontFamily: 'CH',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: MyColors.secondaryColor,
                    ),
                  ),
                ),
                //AgribizNewsWidget(controller: controller, transform: transform),
                MrtvRadioWidget(
                  controller: controller,
                  transform: transform,
                  title: "Agribiz News",
                  items: agriNews,
                  about: "The Agribiznews is disseminating agricultural information like local and international agricultural market news, research findings, technical articles. etc., to all stakeholders including farmers through the URL (www.agribiznews.com.mm). For the friendly use and easy of farmers who are not available to use the computer and access of internet facilities",
                  featureList: agribizFeatures,
                ),
                MrtvRadioWidget(
                  controller: controller,
                  transform: transform,
                  title: "Mrtv Radio",
                  items: mrtvRadio,
                  about: "Developed a Flutter-based radio streaming app with live audio playback using just_audio",
                  featureList: mrtvRadioFeatures,
                ),
                MrtvRadioWidget(
                  controller: controller,
                  transform: transform,
                  title: "Ecommerce",
                  items: ecommerce,
                  about: "Developed a performant e-commerce app using Flutter with REST API integration (Dio) and pagination to handle large product catalogs efficiently.",
                  featureList: ecommerceFeatures,
                ),
              ],
            );
          },
        )
      ],
    );
  }
}

class MrtvRadioWidget extends StatelessWidget {
  const MrtvRadioWidget(
      {super.key, required this.controller, required this.transform, required this.title,
        required this.items,
        required this.about,
        required this.featureList});

  final AnimationController controller;
  final Animation<Offset> transform;
  final String title;
  final List<Item> items;
  final String about;
  final List<String> featureList;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextReveal(
            controller: controller,
            maxHeight: 70.0,
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'CH',
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),

          const SizedBox(
            height: 50,
          ),
          Wrap(
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            runSpacing: 70,
            children: items
                .map(
                  (item) => ItemCard(
                    image: item.image,
                    title: item.title,
                    subtitle: item.subtitle,
                  ),
                )
                .toList(),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextReveal(
                  maxHeight: 50,
                  controller: controller,
                  child: const Text(
                    'About this app ',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CH',
                      fontWeight: FontWeight.normal,
                      color: MyColors.secondaryColor,
                    ),
                  ),
                ),
                SlideTransition(
                  position: transform,
                  // opacity: subTextOpacityAnimation,
                  child:  Container(
                    width: MediaQuery.sizeOf(context).width,
                    child: Text(
                      about,
                      style: TextStyle(
                        fontFamily: 'CH',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
                TextReveal(
                  maxHeight: 50,
                  controller: controller,
                  child: const Text(
                    'Features',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CH',
                      fontWeight: FontWeight.normal,
                      color: MyColors.secondaryColor,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for ( var i in featureList )Text(i,style: TextStyle(color: Colors.white),),

                  ],
                ),

                /*SlideTransition(
                  position: transform,
                  child: const Text(
                    'The Agribiznews is disseminating agricultural ',
                    style: TextStyle(
                      fontFamily: 'CH',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),*/
              ],
            ),
          )
        ],
      ),
    );
  }
}




class AgribizNewsWidget extends StatelessWidget {
  const AgribizNewsWidget({
    super.key,
    required this.controller,
    required this.transform,
  });

  final AnimationController controller;
  final Animation<Offset> transform;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextReveal(
            controller: controller,
            maxHeight: 70.0,
            child: const Text(
              'The Agribiz News',
              style: TextStyle(
                fontFamily: 'CH',
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            runSpacing: 70,
            children: agriNews
                .map(
                  (item) => ItemCard(
                    image: item.image,
                    title: item.title,
                    subtitle: item.subtitle,
                  ),
                )
                .toList(),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextReveal(
                  maxHeight: 50,
                  controller: controller,
                  child: const Text(
                    'About this app ',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CH',
                      fontWeight: FontWeight.normal,
                      color: MyColors.secondaryColor,
                    ),
                  ),
                ),
                SlideTransition(
                  position: transform,
                  // opacity: subTextOpacityAnimation,
                  child: const Text(
                    'The Agribiznews is disseminating agricultural information like local and international agricultural market news, research findings, technical articles. etc., to all stakeholders including farmers through the URL (www.agribiznews.com.mm). For the friendly use and easy of farmers who are not available to use the computer and access of internet facilities',
                    style: TextStyle(
                      fontFamily: 'CH',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
