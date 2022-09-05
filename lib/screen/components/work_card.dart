import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/model/project.dart';
import 'package:untitled/responsive.dart';

class WorkCard extends StatelessWidget {
  const WorkCard({
    Key? key, required this.work,
  }) : super(key: key);
  final ProjectInfo work;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(work.title!,maxLines: Responsive.isMobile(context)?2:1,overflow:TextOverflow.ellipsis ,style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 10,),

          Text(work.description!,maxLines: Responsive.isMobile(context)?3:2,overflow:TextOverflow.ellipsis ,style: TextStyle(height: 1.5),),
          SizedBox(height: 10,),
          Spacer(),
          Spacer(),
          TextButton(onPressed: (){}, child: Text("Read More...",style: TextStyle(color: primaryColor),))

        ],
      ),
    );
  }
}