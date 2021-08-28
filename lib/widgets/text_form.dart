import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Widget  inputField(
    {String hintText = '',String labelText='', bool secure = false,required FormFieldValidator  validate}) {
  final style1= TextStyle(
      color: Colors.black,
      fontSize: 18,
      height: 1.5,

      fontWeight: FontWeight.w700
  );
  final style2= TextStyle(
      color: Colors.grey,
      fontSize: 15,
      height: 3,

     // fontWeight: FontWeight.w600
  );
  return Padding(

    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(

        textAlign: TextAlign.right,
        validator: validate,
        obscureText: secure,
        decoration: InputDecoration(
          hintTextDirection: TextDirection.rtl,
          alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: hintText,
            hintStyle:  GoogleFonts.cairo(
              textStyle: style2,
            ),
            labelText: labelText,
            labelStyle: GoogleFonts.cairo(
              textStyle: style1,
            )
        ),
      ),
    ),
  );
}