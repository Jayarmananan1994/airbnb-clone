import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class OptionScroll extends StatelessWidget {
  final List<BnbOptions> optionList = [
    BnbOptions(
      imageUrl:
          "https://a0.muscache.com/im/pictures/7517954/21419416_original.jpg?aki_policy=large",
      label: "hotels",
    ),
    BnbOptions(
      imageUrl:
          "https://a0.muscache.com/im/pictures/7517954/21419416_original.jpg?aki_policy=large",
      label: "hotels",
    ),
    BnbOptions(
      imageUrl:
          "https://a0.muscache.com/im/pictures/7517954/21419416_original.jpg?aki_policy=large",
      label: "hotels",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
        child: Wrap(
          spacing: 25,
          children: <Widget>[
            Align(
              child: Text(
                'What can we help you find, Jayaramanan?',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.topLeft,
            ),
            Container(
              height: 150.0,
              margin: EdgeInsets.only(top: 25),
              //padding: EdgeInsets.only(top: 25, bottom: 25),
              child: ListView.builder(
                itemCount: optionList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, position) {
                  return optionCard(optionList[position], context);
                },
              ),
            )
          ],
        ));
  }

  Widget optionCard(BnbOptions option, BuildContext context) {
    return Container(
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[faddingImage(option.imageUrl), Text(option.label)],
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
