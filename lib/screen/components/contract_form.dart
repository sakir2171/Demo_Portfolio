import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class ContractForm extends StatelessWidget {
  const ContractForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Text("Contact Form",style: Theme.of(context).textTheme.subtitle1,),
        Container(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                      hintText: 'Name*'

                  ),


                ),

                TextFormField(
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Email*'
                  ),
                ),

                TextFormField(
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      hintText: 'Message*'

                  ),
                ),
                SizedBox(height: defaultPadding*2,),
                new SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // <-- Radius
                      ),
                    ),
                  ),
                ),

                SizedBox(height: defaultPadding*2,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}