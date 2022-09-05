import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/responsive.dart';

class ExprenceItem extends StatelessWidget {
  const ExprenceItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isTablet(context)?Column(
        children: [  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white10,
                child: Icon(Icons.code,size: 30,color: primaryColor,),
              ),
              SizedBox(height: defaultPadding,),
              Text("PROGRAMMING",style: Theme.of(context).textTheme.subtitle1,),
              Text("I am doing programming language very hard."),
            ],
          ),
        ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white10,
                  child: Icon(Icons.android,size: 30,color: primaryColor,),
                ),
                SizedBox(height: defaultPadding,),
                Text("FLUTTER APPLICATION DEVELOPMENT",style: Theme.of(context).textTheme.subtitle1,),
                Text("I have done many project & publish google paly store"),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white10,
                  child: Icon(Icons.design_services,size: 30,color: primaryColor,),
                ),
                SizedBox(height: defaultPadding,),
                Text("FASHIONABLE UI DESIGN",style: Theme.of(context).textTheme.subtitle1,),
                Text("I will custom my app icon & app design to code"),
              ],
            ),
          ),],
      ):Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white10,
                  child: Icon(Icons.code,size: 30,color: primaryColor,),
                ),
                SizedBox(height: defaultPadding,),
                Text("PROGRAMMING",style: Theme.of(context).textTheme.subtitle1,),
                Text("I am doing programming language very hard."),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white10,
                  child: Icon(Icons.android,size: 30,color: primaryColor,),
                ),
                SizedBox(height: defaultPadding,),
                Text("FLUTTER APPLICATION DEVELOPMENT",style: Theme.of(context).textTheme.subtitle1,),
                Text("I have done many project & publish google paly store"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white10,
                  child: Icon(Icons.design_services,size: 30,color: primaryColor,),
                ),
                SizedBox(height: defaultPadding,),
                Text("FASHIONABLE UI DESIGN",style: Theme.of(context).textTheme.subtitle1,),
                Text("I will custom my app icon & app design to code"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}