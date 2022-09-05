import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class Knowladge_info extends StatelessWidget {
  const Knowladge_info({
    Key? key, required this.level,
  }) : super(key: key);
  final String level;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          Icon(Icons.arrow_right,color: primaryColor,),
          Text(level)
        ],
      ),
    );
  }
}