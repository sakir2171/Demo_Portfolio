import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/responsive.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://media.istockphoto.com/photos/location-icons-of-gps-navigation-global-5g-high-speed-internet-and-picture-id1286943539?b=1&k=20&m=1286943539&s=170667a&w=0&h=20uu_jIbhAL4KM3UQshMXUcT7-UnFedVv9BAvOTg5_g=",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.65)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextStyle(
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('Discover the new things'),
                      WavyAnimatedText("Hello, I'm Sakir Ahmed"),
                    ],
                    isRepeatingAnimation: true,
                  ),
                ),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.subtitle2!,
                  maxLines: 1,
                  child: Row(
                    children: [
                      if (!Responsive.isMobileLarge(context))
                        Text.rich(TextSpan(text: "<", children: [
                          TextSpan(
                            text: "Code",
                            style: TextStyle(color: primaryColor),
                          ),
                          TextSpan(text: ">"),
                        ])),
                      Text("I am doing "),
                      Expanded(child: AnimatedSubTitle()),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedSubTitle extends StatelessWidget {
  const AnimatedSubTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
        totalRepeatCount: 4,
        pause: const Duration(milliseconds: 1000),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
        animatedTexts: [
          TypewriterAnimatedText("Mobile or Tab Responsive Ui ",
              speed: Duration(milliseconds: 100)),
          TypewriterAnimatedText("Native Android Development",
              speed: Duration(milliseconds: 100)),
          TypewriterAnimatedText("Flutter Development",
              speed: Duration(milliseconds: 100)),
        ]);
  }
}
