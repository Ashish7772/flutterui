import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBar extends StatefulWidget {
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<CustomBar> {
  final List<String> _listItem = [
    'assets/images/green.jpg',
    'assets/images/red.jpg',
    'assets/images/yellow.png',
    'assets/images/blue.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      child: Column(
        children:[
          Container(
            margin: EdgeInsets.only(left: 16,right: 16,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: SvgPicture.asset("assets/svg/menu.svg"), onPressed: () {}
                ),
                Row(
                  children: [
                    IconButton(icon: SvgPicture.asset("assets/svg/notification.svg"), onPressed: () {}),
                    IconButton(icon: Image.asset("assets/images/user.png",),iconSize: 40, onPressed: () {}
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16,right: 16,top: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Welcome Back',
                style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                ),
                ),
                Padding(padding: EdgeInsets.only(top: 7.0),
                child:
                Text('Creative Mints',
                style: new TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 23
                ),
              ),
                )
              ]

            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Icon(Icons.search),
                Text("Search",
                  style: new TextStyle(
                      fontSize: 19,
                  color: Colors.black)),

              ],
            ),
          ),
          Expanded(

              child:  GridView.count(
                crossAxisCount: 2,
                 crossAxisSpacing: 70,
                 mainAxisSpacing: 70,
                 // childAspectRatio:1/0.5,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage("assets/images/green.jpg"),
                    fit: BoxFit.cover,),
                      borderRadius: BorderRadius.circular(13),
                  ),
                    child: IconButton(
                      onPressed: (){},
                      icon: SvgPicture.asset("assets/svg/dollar.svg",
                        height: 40,
                        width: 40,
                      ),
                    ),

                    ),
                ],

              )
          )
        ],
      ),
    );

  }
}
