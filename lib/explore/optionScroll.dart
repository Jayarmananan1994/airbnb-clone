import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class OptionScroll extends StatelessWidget {
  final List<BnbOptions> optionList = [
    BnbOptions(
      imageUrl:
          "https://a0.muscache.com/im/pictures/8b7519ec-2c82-4c09-8233-fd4d2715bbf9.jpg?aki_policy=large",
      label: "Stays",
    ),
    BnbOptions(
      imageUrl:
          "https://a0.muscache.com/im/pictures/a77ee672-e790-4362-8cc5-52bec1371ece.jpg?aki_policy=large",
      label: "Experiences",
    ),
    BnbOptions(
      imageUrl:
          "https://a0.muscache.com/im/pictures/38f2bfd6-1f4d-46d7-babf-61657deef302.jpg?aki_policy=large",
      label: "Adventures",
    ),
    BnbOptions(
      imageUrl:
          "https://a0.muscache.com/im/pictures/da2d8e97-90b7-409f-94ac-5ab0327c289b.jpg?aki_policy=large",
      label: "Restaurants",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            "What can we help you find, Jayaramanan?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color(0xff4a545a)),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: optionList
                .map((option) => optionCard(option, context))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget optionCard(BnbOptions option, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, bottom: 5, top: 5),
      child: Material(
        elevation: 4.0,
        borderRadius: BorderRadius.circular(15),
        shadowColor: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Container(
              height: 110,
              width: 150,
              //padding: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image(
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
                  image: NetworkImage(option.imageUrl),
                ),
              ),
            ),
            Container(
              height: 30,
              width: 150,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                option.label,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget faddingImage(url) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: url,
        fit: BoxFit.fill,
      ),
    );
  }
}

class BnbOptions {
  String imageUrl;
  String label;
  BnbOptions({this.imageUrl, this.label});
}
