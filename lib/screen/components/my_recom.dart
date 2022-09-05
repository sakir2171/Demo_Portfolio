import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/model/recom.dart';

class myRecom extends StatelessWidget {
  const myRecom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Text("Recommendation Clients",style: Theme.of(context).textTheme.subtitle1,),
        Padding(
          padding: const EdgeInsets.all(defaultPadding/2),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(recomList.length, (index) => RecomCard(recom: recomList[index],)),
            ),

          ),
        )

      ],
    );
  }
}

class RecomCard extends StatelessWidget {
  const RecomCard({
    Key? key, required this.recom,
  }) : super(key: key);
  final Recom recom;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding/2),
      child: Container(
        width: 300,

        color: secondaryColor,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(recom.name!,style: Theme.of(context).textTheme.subtitle2,),
              Text(recom.source!),
              SizedBox(height: defaultPadding/2,),
              Text(recom.text!,maxLines: 4,overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
      ),
    );
  }
}