import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/widgets/address.dart';
import 'package:training/widgets/customAppBar.dart';
import 'package:training/widgets/date_%20time.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool _value = false;
  var val ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: customAppBar(Icons.arrow_back_sharp),
          preferredSize: Size.fromHeight(60)),
      body: ListView(
        children: [
          DateTime(),
          Address(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Text(
              'طريقة الدفع',
              textDirection: TextDirection.rtl,
              style: GoogleFonts.cairo(
                  textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              )),
            ),
          ),
          Container(
            height: 30,
            child: ListTile(
              trailing: Radio(
                value: 1,
                groupValue: val,
                onChanged: (  value) {
                  setState(() {
                    val= value;
                  });
                },
                activeColor: Colors.black,
              ) ,
              title: Text('الدفع نقدنا',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.cairo(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),),
              leading: Icon(Icons.attach_money),
            ),
          ),
          ListTile(

            trailing: Radio(
              value: 2,
              groupValue: val,
              onChanged: (  value) {
                setState(() {
                  val= value;
                });
              },
              activeColor: Colors.black,
            ) ,
            title: Text('الدفع بإستخدام البطاقة',
              textDirection: TextDirection.rtl,
              style: GoogleFonts.cairo(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),),
            leading: Icon(Icons.credit_card_rounded),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10,right: 90),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  height: 30,
                  width: 130,
                  alignment: Alignment.center,
                  color: Colors.brown.withOpacity(.3),
                  child: Text('إضافة بطاقة جديدة',style: GoogleFonts.cairo(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                    ),),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
