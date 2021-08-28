import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/widgets/custom_app_bar_for%20users.dart';
class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  Widget listTile(){
    return  ListTile(
      title: Text('تمت الموافقة علي طلبك بواسطة دنيا موافي',
        textDirection: TextDirection.rtl,
        style: GoogleFonts.cairo(
          textStyle: TextStyle(
            color: Colors.black26,
            fontSize: 12,
          ),
        ),),
      subtitle: Text('مند يومين',
        textDirection: TextDirection.rtl,
        style: GoogleFonts.cairo(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),),
      trailing: CircleAvatar(
        child: Image.asset('assets/h.jpeg'),
        radius: 35,
      ),
      leading: IconButton(onPressed: (){},
        icon: Icon(Icons.view_headline,color: Colors.black38,),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: customAppBarUsers(), preferredSize: Size.fromHeight(70)),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('الإشعارات',
              textDirection: TextDirection.rtl,
              style: GoogleFonts.cairo(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              )
            ),),
          ),
          Divider(
            height: 1.5,
            thickness: 1,
          ),
          ListView.builder(itemBuilder: (context,index){
            return listTile();
          },
          itemCount: 20,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          )


        ],
      ),

    );
  }
}
