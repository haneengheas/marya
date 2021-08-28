import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/widgets/customAppBar.dart';
import 'package:training/widgets/text_form.dart';
import 'package:training/widgets/wellcome_text.dart';
class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
GlobalKey<FormState> _formKey = GlobalKey<FormState>();
_validateForm() {
if (_formKey.currentState!.validate()) {
print('login');
} else {
return;
}
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: customAppBar(Icons.clear),
      ),
      body: ListView(
        children: [
          wellcomeText('  هل نسيت كلمة المرور؟   ', 'من فضلك ادخل البريد الالكتروني الخاص بك و سوف نقوم بارسال رابط لاعادة تعيين كلمة المرور الخاصة بك',20),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  inputField(
                      labelText: ' البريد الالكتروني',
                      hintText: 'برجاء كتابه البريد الالكتروني',
                      secure: false,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
                        } else if (value.length < 5) {
                          return 'برجاء ادخال البريد الالكتروني كامل ';
                        }
                      }),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _validateForm();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 370,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      'اعادة تعيين كلمة المرور',
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        fontWeight: FontWeight.bold),
                        // fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(' انشاء حساب',style: GoogleFonts.cairo(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              )),
              SizedBox(
                width: 10,
              ),
              Text('ليس لديك حساب ؟', style: GoogleFonts.cairo(
                textStyle: TextStyle(
                    fontSize: 15
                ),
              ),),
            ],
          )


        ],
      ),
    );
  }
}
