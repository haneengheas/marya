import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  String? dropdownValue ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text('الدولة  ',style: GoogleFonts.cairo(
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
            hint: Text('يرجي اختيار الدولة'),
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
            items: <String>['السودان','قطر',"الكويت","السعودية","مصر"]
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
