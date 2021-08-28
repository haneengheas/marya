import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/screens/Navigation.dart';
import 'package:training/screens/home_page.dart';
import 'package:training/widgets/customAppBar.dart';
class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool _value = false;
  var val ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: customAppBar(Icons.arrow_back_ios_outlined), preferredSize:Size.fromHeight(70)),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text('إختيار نوع الحساب' ,style: GoogleFonts.cairo(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            ),),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black12,
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (  value) {
                    setState(() {
                      val= value;
                    });
                  },
                  activeColor: Colors.black,
                ),
                Text('صالون',style: GoogleFonts.cairo(
                  fontSize: 18,

                ),)
              ],
            )
          ),
          Container(
              margin: EdgeInsets.all(15),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Radio(
                    value: 2,
                    groupValue: val,
                    onChanged: (  value) {
                      setState(() {
                        val= value;
                      });
                    },
                    activeColor: Colors.black,
                  ),
                  Text('خبيرة',style: GoogleFonts.cairo(
                    fontSize: 18,

                  ),)
                ],
              )
          ),
          Container(
              margin: EdgeInsets.all(15),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Radio(
                    value: 3,
                    groupValue: val,
                    onChanged: (  value) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Navigation()));
                      setState(() {
                        val= value;
                      });
                    },
                    activeColor: Colors.black,
                  ),
                  Text('عميل',style: GoogleFonts.cairo(
                    fontSize: 18,

                  ),)
                ],
              )
          ),
        ],
      ),
    );
  }
}
