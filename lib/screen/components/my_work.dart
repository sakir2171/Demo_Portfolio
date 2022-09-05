import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/model/project.dart';
import 'package:untitled/responsive.dart';
import 'package:untitled/screen/components/work_card.dart';

class my_work extends StatelessWidget {
  const my_work({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Text("My Recent Works",style: Theme.of(context).textTheme.subtitle1,),
        Text("It's my won works",style: TextStyle(fontSize: 10),),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
          child: Responsive(
              mobile: worksItem(crossAxisCount: 1,),
              mobileLarge: worksItem(crossAxisCount: 2,),
              tablet:worksItem(childAspectRatio: 1.2,crossAxisCount: 3,),
              desktop: worksItem()
          ),
        )
      ],
    );
  }
}

class worksItem extends StatelessWidget {
  const worksItem({
    Key? key,
    this.crossAxisCount=4,
     this.childAspectRatio=1.4,
  }) : super(key: key);
 final int crossAxisCount;
 final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding
      ),
      itemBuilder: (context, index) => WorkCard(work: pList[index],),

    );
  }
}