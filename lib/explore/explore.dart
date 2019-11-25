import 'package:airbnbclone/explore/optionScroll.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: explorePageMain(),
    );
  }

  Widget explorePageMain() {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Column(
        children: <Widget>[
          searchBox(),
          SizedBox(height: 10),
          OptionScroll(),
          SizedBox(height: 10),
          placeToStay()
        ],
      ),
    );
  }

  Widget whatDouwant() {
    return Container(
      child: Column(
        children: <Widget>[
          Text('What can we help you find, Jayaramanan ?',
              style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }

  Widget placeToStay() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Airbnb Plus places to stay',
          style: TextStyle(
            fontSize: 25,
            color: Color(0xff484848),
            fontWeight: FontWeight.w800,
          ),
        ),
        Text('A selection of places to stay verified for quality and design'),

        // Stack(
        //   children: <Widget>[
        //     Image(
        //       fit: BoxFit.contain,
        //       alignment: Alignment.topCenter,
        //       image: NetworkImage(
        //           "https://a0.muscache.com/4ea/air/v2/pictures/fe0ff5f7-41fe-42f4-83d0-60a51549fc45.jpg?t=c:w800-h600,r:w800-h600-sfit,e:fjpg-c75"),
        //     )
        //   ],
        // )
      ],
    );
  }

  Widget searchBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(
          elevation: 5,
          child: Container(
            width: 365,
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  'Try "Costa del soi"',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
        ),
        Container(
          // width: 180,
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: <Widget>[
              OutlineButton(
                  onPressed: () {},
                  child: Text(
                    'Dates',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )),
              SizedBox(width: 10),
              OutlineButton(
                  onPressed: () {},
                  child: Text('Guests',
                      style: TextStyle(fontWeight: FontWeight.w400))),
            ],
          ),
        )
      ],
    );
  }
}
