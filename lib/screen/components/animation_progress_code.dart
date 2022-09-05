import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class AnimationProgressCoding extends StatelessWidget {
  const AnimationProgressCoding({
    Key? key,
    required this.percentage,
    required this.level,
  }) : super(key: key);
  final double percentage;
  final String level;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 0.8),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(level,style: TextStyle(color: Colors.white),),
                  Text((value * 100).toInt().toString() + "%"),
                ],
              ),
              SizedBox(height: defaultPadding/2,),
              LinearProgressIndicator(
                value: percentage,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
            ],
          )),
    );
  }
}