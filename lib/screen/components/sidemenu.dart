import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/responsive.dart';
import 'package:untitled/screen/components/animation_progress_code.dart';
import 'package:untitled/screen/components/animation_progress_skill.dart';
import 'package:untitled/screen/components/area_info.dart';
import 'package:untitled/screen/components/knowlage_info.dart';
import 'package:untitled/screen/components/myinfo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [

          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Something About Me",
                      style: Theme.of(context).textTheme.subtitle2),
                  SizedBox(height: 10,),
                  Text("Myself Sakir. I'm mainly interested in designing and developing Android apps. I even have experience in building the fashionable Ui phonotypes."),
                  SizedBox(height: 10,),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  AreaInfo(
                    title: "Email",
                    text: "sakir.ahmed119@gmail.com",
                  ),
                  AreaInfo(
                    title: "Phone",
                    text: "+8801303028560",
                  ),
                  AreaInfo(
                    title: "City",
                    text: "Dhaka",
                  ),
                  AreaInfo(
                    title: "Age",
                    text: "23",
                  ),
                  AreaInfo(
                    title: "Residance",
                    text: "Bangladesh",
                  ),
                  Divider(),
                  Text(
                    "Skills",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AnimationProgressSkill(
                          percentage: 0.75,
                          level: "Flutter",
                        ),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                        child: AnimationProgressSkill(
                          percentage: 0.8,
                          level: "N. Android",
                        ),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                        child: AnimationProgressSkill(
                          percentage: 0.78,
                          level: "Firebase",
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),

                  Text("Coding", style: Theme.of(context).textTheme.subtitle2,),
                  SizedBox(height: 10,),

                  AnimationProgressCoding(level: "Dart",percentage: 0.77,),
                  AnimationProgressCoding(level: "Java",percentage: 0.8,),
                  AnimationProgressCoding(level: "Python",percentage: 0.61,),
                  AnimationProgressCoding(level: "C",percentage: 0.85,),
                  AnimationProgressCoding(level: "C++",percentage: 0.65,),
                  Divider(),

                  Text("Knowledge", style: Theme.of(context).textTheme.subtitle2,),
                  SizedBox(height: 10,),

                  Knowladge_info(level: "Android Studio",),
                  Knowladge_info(level: "Vs Code",),
                  Knowladge_info(level: "Figma",),
                  Knowladge_info(level: "Photoshop",),
                  Divider(),

                  SizedBox(height: 10,),
                  Container(
                   // color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(onPressed: (){},icon: Icon(Icons.facebook,color:Theme.of(context).textTheme.bodyText1!.color),),
                        SizedBox(width: 20,),
                        IconButton(onPressed: (){},icon: Icon(Icons.facebook,color:Theme.of(context).textTheme.bodyText1!.color),),
                        SizedBox(width: 20,),
                        IconButton(onPressed: (){},icon: Icon(Icons.facebook,color:Theme.of(context).textTheme.bodyText1!.color),),
                        Spacer(),
                      ],
                    ),
                  )

                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}




