import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/widgets/custom_app_bar_for%20users.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: customAppBarUsers(), preferredSize: Size.fromHeight(70)),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 145
            ,
            color: Colors.black,
           // padding: EdgeInsets.only(left: 2, right: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                    Text('رصيد',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                    Text('النقاط',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                    Text('الطلبيات',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            margin: EdgeInsets.only(top: 10),
            height: 30,
            width: double.infinity,
            color: Colors.black12,
            child: Text(
              'حسابي',
              textDirection: TextDirection.rtl,
              style: GoogleFonts.cairo(
                  textStyle: TextStyle(fontSize: 15, color: Colors.black54)),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.white,
            padding: EdgeInsets.only(left: 2, right: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,                        size: 20,
                      ),
                    ),
                    Text('العناوين',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          height: 1,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Text('الدفع',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          height: 1,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Text('الملف الشخصي',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          height: 1,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            height: 30,
            width: double.infinity,
            color: Colors.black12,
            child: Text(
              'الإعدادت',
              textDirection: TextDirection.rtl,
              style: GoogleFonts.cairo(
                  textStyle: TextStyle(fontSize: 15, color: Colors.black54)),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            padding: EdgeInsets.only(left: 2, right: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Text('البلد',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          height: 1,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Text('تغيير اللغة',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          height: 1,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            height: 30,
            width: double.infinity,
            color: Colors.black12,
            child: Text(
              'عن ماريا',
              textDirection: TextDirection.rtl,
              style: GoogleFonts.cairo(
                  textStyle: TextStyle(fontSize: 15, color: Colors.black54)),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.white,
            padding: EdgeInsets.only(left: 2, right: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Text('من نحن',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          height: 1,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Text('الشروط و الاحكام',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          height: 1,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Text('سياسة الخصوصية',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          height: 1,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Text('خدمة العملاء',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.cairo(
                          height: 1,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
