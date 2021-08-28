import 'package:flutter/material.dart';
import 'package:training/widgets/customAppBar.dart';
import 'package:training/widgets/drop_down_city.dart';
import 'package:training/widgets/drop_down_country.dart';
import 'package:training/widgets/text_form.dart';
import 'package:training/widgets/wellcome_text.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
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
          child: customAppBar(Icons.clear), preferredSize: Size.fromHeight(70)),
      body: ListView(
        children: [
          wellcomeText(
              '  إنشاء حساب  ', 'هل لديك حساب بالفعل ؟ تسجيل دخول', 25),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  inputField(
                      labelText: ' الاسم الاول',
                      hintText: 'يرجي ادخال الاسم الاول',
                      secure: false,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'برجاء كتابه الاسم بشكل صحيح';
                        }
                      }),
                  inputField(
                      labelText: 'إسم العائلة',
                      hintText: 'برجاء كتابه إسم العائلة ',
                      secure: true,
                      validate: (value) {
                        if (value.toString().isEmpty) {
                          return 'برجاء كتابه الاسم بشكل صحيح';
                        }
                      }),
                  inputField(
                      labelText: ' البريد الالكتروني ',
                      hintText: 'برجاء كتابه البريد الالكتروني ',
                      secure: false,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
                        } else if (value.length < 5) {
                          return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
                        }
                      }),
                  inputField(
                      labelText: 'رقم الهاتف',
                      hintText: 'برجاء ادخال رقم الهاتف ',
                      secure: true,
                      validate: (value) {
                        if (value.toString().isEmpty) {
                          return 'برجاء ادخال رقم الهاتف بشكل صحيح';
                        }
                      }),
                ],
              )),
          Country(),
          City(),
        ],
      ),
    );
  }
}
