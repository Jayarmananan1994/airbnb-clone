import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  final List<Menu> menuList = [
    Menu(icon: Icon(Icons.search, size: 20), label: 'EXPLORE'),
    Menu(icon: Icon(Icons.favorite_border, size: 25), label: 'SAVED'),
    Menu(icon: Icon(Icons.message, size: 25), label: 'INBOX'),
    Menu(icon: Icon(Icons.account_circle, size: 25), label: 'PROFILE'),
  ];
  @override
  Widget build(BuildContext context) {
    // return ButtonBar(
    //   children: menuList.map((menu)=> buttonIcon(menu)).toList(),
    // );
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: menuList.map((menu) => buttonIcon(menu)).toList(),
      ),
    );
  }

  Widget buttonIcon(Menu menu) {
    return Container(
      //alignment: Alignment.center,
      width: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          menu.icon,
          Text(
            menu.label,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          )
        ],
      ),
      //onPressed: () {},
    );
  }
}

class Menu {
  String label;
  Icon icon;

  Menu({this.label, this.icon});
}
