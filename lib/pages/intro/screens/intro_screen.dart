// import 'package:ecomm_app/core/image_string.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nascon_app/pages/splash_screen/screen/splash_screen.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder(
            future: Future.delayed(const Duration(seconds: 2)),
            builder: (context, snapshot) =>
                snapshot.connectionState == ConnectionState.waiting
                    ? Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircularProgressIndicator(
                                color: Colors.black87,
                                strokeWidth: 4,
                              ),
                              Gap(30)
                            ]),
                      )
                    : IntroductionScreen(
                        showNextButton: true,
                        showDoneButton: true,
                        onDone: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SplashScreen()));
                        },
                        done: const Text(
                          'Done',
                          style: TextStyle(color: Colors.black54),
                        ),
                        dotsDecorator: const DotsDecorator(
                            activeColor: Colors.black87,
                            activeSize: Size(15, 15)),
                        next: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                          size: 30,
                        ),
                        globalBackgroundColor: Colors.white,
                        pages: [
                          pageviewmodel("Lorem Ipsum is a dummy text",
                              "Welcome !!! Lets clear the tasks faster with mane"),
                          pageviewmodel("Lorem Ipsum is a dummy text",
                              "Welcome !!! Lets clear the tasks faster with mane"),
                          pageviewmodel("Lorem Ipsum is a dummy text",
                              "Welcome !!! Lets clear the tasks faster with mane")
                        ],
                      )));
  }

  PageViewModel pageviewmodel(String title, String bodyText) {
    return PageViewModel(
      titleWidget: Text(title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          )),
      body: bodyText,
      image: Image.asset(
        "assets/introduction_image.png",
      ),
      decoration: const PageDecoration(
          imageFlex: 2,
          bodyFlex: 1,
          bodyPadding: EdgeInsets.zero,
          imagePadding: EdgeInsets.all(10)),
    );
  }
}
