import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:web_app_demo/utils/styles.dart';
import 'package:web_app_demo/widgets/animation_widgets/explicit_animation.dart';

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
      Colors.grey,
      Colors.blueGrey,
      Colors.yellow,
    ]
        /*const colorizeColors = [
      Colors.white,
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ]*/
        ;

    return Container(
      key: navigatorKeys[0],
      height: sHeight,
      width: sWidth,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 500,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.teal],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.5, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width / 2,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Hi, I'm Ye Yint Aung .",
                              style: TextStyle(color: Colors.white, fontSize: 40),
                            ),
                            /*const Text(
                              "Ye Yint Aung .",
                              style: TextStyle(color: Colors.white, fontSize: 40),
                            ),*/
                            SizedBox(height: 20,),
                            const Text(
                              "Nice to meet you.",
                              style: TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                            /*AnimatedTextKit(
                              animatedTexts: [
                                ColorizeAnimatedText(
                                  'Nice to meet you',
                                  textStyle: Theme.of(context).textTheme.bodyLarge!,
                                  colors: colorizeColors,
                                ),
                              ],
                            ),*/
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 60),
                              height: 50,
                              width: 200,
                              color: Colors.white,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Download CV"),
                                  Icon(Icons.download),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(),

                CircleProfileImage(),

              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.blueGrey],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.5, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /*AnimatedTextKit(
                          animatedTexts: [
                            ColorizeAnimatedText(
                              'FLUTTER',
                              textStyle: Theme.of(context).textTheme.headlineLarge!,
                              colors: colorizeColors,
                            ),
                          ],
                        ),*/

                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          child: DefaultTextStyle(
                            style: const TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
                            child: AnimatedTextKit(
                              pause: const Duration(milliseconds: 2000),
                              repeatForever: true,
                              animatedTexts: [
                                TyperAnimatedText('MOBILE APPLICATION DEVELOPER'),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const ProfileLinks(),


              ],
            ),
          ),
          /*Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.red,
            child:  Center(
              child: Text("Working Experience Project",style: Styles.headerText,),
            ),
          )*/
        ],
      ),
    );
  }
}

class CircleProfileImage extends StatelessWidget {
  const CircleProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AvatarGlow(
        glowRadiusFactor: 0.1,
        glowCount: 2,
        glowColor: Colors.white,
        glowShape: BoxShape.circle,
        curve: Curves.linear,
        child: Material(
          elevation: 8.0,
          color: Colors.white,
          shape: CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Colors.white,
              radius: 130,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(130),
                child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/034/585/785/non_2x/ai-generative-confident-young-businessman-in-suit-standing-with-arms-folded-free-photo.jpg",
                 // height: 100,
                ),
              )
          ),
        ),
      ),
    );
  }
}

class ProfileLinks extends StatelessWidget {
  const ProfileLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

/*Container(
                      width: 200,
                      height: 200,
                      //margin: const EdgeInsets.all(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), border: Border.all(width: 0.5, color: Colors.white)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          width: 200,
                          height: 200,
                          "https://image.tensorartassets.com/cdn-cgi/image/anim=false,plain=false,w=320,q=85/posts/images/718319300410229872/ad418c1b-0cf4-4a75-ac67-728ee14e0471.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )*/
