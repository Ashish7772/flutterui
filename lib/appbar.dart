import 'package:flutter/cupertino.dart';
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
            margin: EdgeInsets.only(left: 20,right: 20,top: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child:  Text('Welcome Back',
                        style: new TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                        ),
                      ),
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
                padding: EdgeInsets.all(16),
                crossAxisCount: 2,
                 crossAxisSpacing: 20,
                 mainAxisSpacing: 20,
                childAspectRatio:20/13,
                children: <Widget>[
                  CategoryCard(
                    ImgSrc: "assets/images/green.jpg",
                    SvgSrc: "assets/svg/dollar.svg",
                    title: "Transaction",
                    item: "7 items",
                  ),
                  CategoryCard(
                    ImgSrc: "assets/images/red.jpg",
                    SvgSrc: "assets/svg/budget.svg",
                    title: "Budget",
                    item: "4 items",
                  ),
                  CategoryCard(
                    ImgSrc: "assets/images/yellow.png",
                    SvgSrc: "assets/svg/star.svg",
                    title: "Recommendations",
                    item: "6 items",
                  ),
                  CategoryCard(
                    ImgSrc: "assets/images/blue.jpg",
                    SvgSrc: "assets/svg/credit-card.svg",
                    title: "Credit Cards",
                    item: "3 Cards",
                  ),
                ],
              ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text('Choose a categories',
                  style: new TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String ImgSrc;
  final String SvgSrc;
  final String title;
  final String item;
  const CategoryCard({
    Key key,
    this.ImgSrc,
    this.SvgSrc,
    this.title,
    this.item
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage(ImgSrc),
      fit: BoxFit.cover,),
        borderRadius: BorderRadius.circular(13),
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(SvgSrc,
              height: 25,
              width: 25,
            ),
          ),

          Text(title,style: new TextStyle(
            color: Colors.white,
          ),
          ),
          Text(item,style: new TextStyle(
            color: Colors.white,
            fontSize: 10
          ),
          )
        ],
      ),
      );
  }
}
