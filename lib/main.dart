import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_app_demo/home.dart';
import 'package:web_app_demo/screen/whole_screen.dart';
import 'package:web_app_demo/utils/colors.dart';

import 'bloc/screen_offset.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: HomePage(),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 420,
        backgroundColor: MyColors.scaffoldColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: SizedBox(
            height: 150,
            child: Image.asset(
              'assets/images/flutter.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        actions: [
         /* TextButton(
            onPressed: () {},
            child: const Text(
              'Home',
              style: TextStyle(
                  fontFamily: 'CH',
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),*/
          /*TextButton(
              onPressed: () {},
              child: const Text(
                'About',
                style: TextStyle(
                    fontFamily: 'CH',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              )),*/
          /*TextButton(
              onPressed: () {},
              child: const Text(
                'Experience Project',
                style: TextStyle(
                    fontFamily: 'CH',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              )),*/
          /*TextButton(
              onPressed: () {},
              child: const Text(
                'Price',
                style: TextStyle(
                    fontFamily: 'CH',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              )),*/
          /*TextButton(
            onPressed: () {},
            child: const Text(
              'News',
              style: TextStyle(
                  fontFamily: 'CH',
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),*/
          /*Padding(
            padding: const EdgeInsets.only(right: 70),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.scaffoldColor,
                  side: const BorderSide(color: MyColors.secondaryColor)),
              child: const Text(
                'Get started',
                style: TextStyle(
                    fontSize: 14,
                    color: MyColors.secondaryColor,
                    fontFamily: 'CH',
                    fontWeight: FontWeight.w500),
              ),
            ),
          )*/
        ],
      ),
      backgroundColor: MyColors.scaffoldColor,
      body: BlocProvider(
        create: (context) => DisplayOffset(ScrollOffset(scrollOffsetValue: 0)),
        child: const WholeScreen(),
      ),
    );
  }
}