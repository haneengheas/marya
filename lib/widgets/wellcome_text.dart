import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Widget wellcomeText(String labeltext,String hinttext,double fontsize){
  final style1= TextStyle(
    height: 1.5,
    fontSize: fontsize,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  final style2=TextStyle(
    height: 1.5,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    wordSpacing: 1,
    letterSpacing: 2,
  );
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.start,
    textDirection: TextDirection.ltr,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 5,left: 5,right: 7),
        child: Text( labeltext,
        style:GoogleFonts.cairo(
          textStyle:style1
        )
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 7,right: 7),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Text(hinttext,
              overflow: TextOverflow.fade,
              style: GoogleFonts.cairo(
            textStyle: style2,
          )
          ),
        ),
      )
    ],
  );
}