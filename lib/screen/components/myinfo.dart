import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(

          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage("https://scontent.fdac23-1.fna.fbcdn.net/v/t1.6435-9/106095941_2717521148491256_7385106511581337567_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEK4G1adUUMd04T1Q31gY3-4UGXPr4AxZXhQZc-vgDFlZA0rguNXGEnxOJNNavv2L1zU3yJ0phY1q2gW20iG-4r&_nc_ohc=jSCv1JY1v2QAX8oEcei&_nc_ht=scontent.fdac23-1.fna&oh=00_AT9fEG4S_qgyqs4zU3RBC3rDgNVA2m2wFCrvYOT1QtAEbg&oe=632A3650"),

              ),
            ),
            Spacer(),
            Text("Sakir Ahmed",style: Theme.of(context).textTheme.subtitle1,),
            Text("Mobile App Developer",textAlign: TextAlign.center,),
            SizedBox(height: 12,),
            TextButton(onPressed: (){},   style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),child: Row(
              children: [
                Spacer(),
                Center(child: Text("Download Resume",style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),)),
                Icon(Icons.download,color:Theme.of(context).textTheme.bodyText1!.color),
                Spacer(),
              ],
            )),

          Spacer(),
            // RaisedButton(
            //   onPressed: () {},
            //   color: Colors.deepOrange,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(4)),
            //   child: Text( "Cv/Resume", overflow: TextOverflow.ellipsis ,textAlign: TextAlign.center,),
            // ),

            Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}