import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTime extends StatefulWidget {
  @override
  _DateTimeState createState() => _DateTimeState();
}
class _DateTimeState extends State<DateTime> {
  String? dropdownValue ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text('تاريخ الخدمة  ',style: GoogleFonts.cairo(
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
            hint: Text('قم بإختيار تاريخ ووقت الخدمة'),
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
            items: <String>['2021','ا3:00',"4:00","4:30"]
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