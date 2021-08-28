import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class City extends StatefulWidget {
  @override
  _CityState createState() => _CityState();
}
class _CityState extends State<City> {
  String? dropdownValue ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text('المدينة  ',style: GoogleFonts.cairo(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButton<String>(
           // icon: Icon(Icons.arrow_downward),
            hint: Text('يرجي اختيار المدينة'),
            value: dropdownValue,
            underline: Container(
              width: 30,
              height: 1,
              color: Colors.grey,
            ),
            onChanged: (newValue) {
              setState(() {
                dropdownValue=newValue!;
              });
            },
            items: <String>['جدة', 'الرياض','الدمام',"مكة","ابها"]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SizedBox(
                  width: 350, // for example
                  child: Text(value, textAlign: TextAlign.right),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}