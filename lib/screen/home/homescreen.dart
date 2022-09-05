import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/model/project.dart';
import 'package:untitled/model/recom.dart';
import 'package:untitled/screen/components/contract_form.dart';
import 'package:untitled/screen/components/exprence_item.dart';
import 'package:untitled/screen/components/main_banner.dart';
import 'package:untitled/screen/components/my_recom.dart';
import 'package:untitled/screen/components/my_work.dart';
import 'package:untitled/screen/components/work_card.dart';
import 'package:untitled/screen/mainscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        MainBanner(),
        SizedBox(height: defaultPadding,),
        ExprenceItem(),
        SizedBox(height: defaultPadding,),
        my_work(),
        SizedBox(height: defaultPadding,),
        myRecom(),
        ContractForm(),
      ],
    );
  }
}








