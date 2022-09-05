import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/responsive.dart';
import 'package:untitled/screen/components/sidemenu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget>children;


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)? null: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context)=>IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        },icon: Icon(Icons.menu),),)
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWith),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
              Expanded(flex:2,child: SideMenu()),
              if(!Responsive.isMobile(context))
              SizedBox(width: defaultPadding/2,),
              Expanded(flex:7,child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                    ...widget.children,
                      //children;
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),

    );
  }
}


