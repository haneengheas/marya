import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Widget customAppBarUsers() {
  final style1=TextStyle(
      fontSize: 20,
      height: 1.8,
      color: Colors.black,
      fontWeight: FontWeight.w700);
  final style2=  TextStyle(
      fontSize: 20,
      height: .8,
      color: Colors.black,
      fontWeight: FontWeight.w500);
  return AppBar(
    bottomOpacity: 0,
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      Row(
        children: [
          // Image(image: AssetImage('assets/h.jpeg'))
          Column(
            children: [
              Text(
                  'مــــاريا',
                  style: GoogleFonts.cairo(
                    textStyle: style1,
                  )
              ),
              Text(
                  'MARYA',
                  style: GoogleFonts.cairo(
                    textStyle: style2,
                  )
              ),
            ],
          ),
          CircleAvatar(
            radius: 40,
            child: Image(image: AssetImage('assets/h.jpeg')),
          ),
        ],
      ),

    ],
   leadingWidth: 150,
   leading:
   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
     child: Column(
       children: [
         Text('هلا دنيا   ',style: GoogleFonts.cairo(
             textStyle: TextStyle(
               fontSize: 15,
               height: 1,
               fontWeight: FontWeight.bold,
               color: Colors.black
             )
         ),),
         Text('deina@marya.com',style: GoogleFonts.cairo(
             textStyle: TextStyle(
               fontSize: 12,
               height: 1,
               fontWeight: FontWeight.bold,
                 color: Colors.black

             )
         ),)
       ],
     ),
   ),
  );
}
