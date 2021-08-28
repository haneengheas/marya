import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/screens/category.dart';
import 'package:training/screens/new_password.dart';
import 'package:training/screens/sign_up.dart';
import 'package:training/widgets/customAppBar.dart';
import 'package:training/widgets/text_form.dart';
import 'package:training/widgets/wellcome_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _validateForm() {
    if (_formKey.currentState!.validate()) {
      print('login');
    } else {
      return;
    }
  }
final style1= TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
  color: Colors.black,
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: customAppBar(Icons.clear), preferredSize: Size.fromHeight(60)),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          wellcomeText('!مرحبا بك','نسعد دائما بوجودك معانا',25),
          SizedBox(
            height: 20,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  inputField(
                      labelText: ' البريد الالكتروني او رقم الهاتف',
                      hintText: 'برجاء كتابه البريد الالكتروني او رقم الهاتف',
                      secure: false,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
                        } else if (value.length < 5) {
                          return 'رقم الهاتف يجب ان يكون 11 رقم';
                        }
                      }),
                  inputField(
                      labelText: 'كلمة المرور',
                      hintText: 'برجاء كتابه كلمة المرور ',
                      secure: true,
                      validate: (value) {
                        if (value.toString().isEmpty) {
                          return 'برجاء ادخال كلمة المرور بشكل صحيح';
                        }
                      }),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPassword()));
            },
            child: Text('     نسيت كلمة المرور؟',
            textDirection: TextDirection.rtl,
            style: GoogleFonts.cairo(
              textStyle: style1,
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _validateForm();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
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
                      'تسجيل دخول',
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,),
                            // fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUp()));
                },
                child: Text(' انشاء حساب',style: GoogleFonts.cairo(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                )),
              ),
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
