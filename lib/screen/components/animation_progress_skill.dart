import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class AnimationProgressSkill extends StatelessWidget {
  const AnimationProgressSkill({
    Key? key,
    required this.percentage,
    required this.level,
  }) : super(key: key);
  final double percentage;
  final String level;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(tween: Tween<double>(begin: 0,end:percentage),
            duration: defaultDuration,
            builder: (context,double value,child)=>
                Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: value,
                      color: primaryColor,
                      backgroundColor: darkColor,
                    ),
                    Center(
                      child: Text((value*100).toInt().toString()+"%",
                        style: Theme.of(context).textTheme.subtitle1,),
                    ),
                  ],

                ),
          ),
        ),
        SizedBox(height: defaultPadding/2,),
        Text("${level}",maxLines: 1,
          overflow: TextOverflow.ellipsis
          ,style: Theme.of(context).textTheme.subtitle2,)
      ],
    );
  }
}