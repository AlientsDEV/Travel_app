import 'package:flutter/material.dart';


class BuildTabs extends StatefulWidget{

  @override
  _BuildTabsState createState() => _BuildTabsState();
}

class _BuildTabsState extends State<BuildTabs> {
  bool isSelected = true;

  TextStyle selectedItem = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 22.0
  );

  TextStyle unSelectedItem = TextStyle(
      color: Colors.grey,
      fontSize: 16.0
  );

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            setState(() {
              isSelected = true;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Favorite',
                style: isSelected ? selectedItem : unSelectedItem,
              ),
              Container(
                height: 2.0,
                width: 30.0,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 15.0,),
        GestureDetector(
          onTap: (){
            setState(() {
              isSelected = false;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'New',
                style: isSelected ? unSelectedItem : selectedItem,
              ),
              Container(
                height: 2.0,
                width: 30.0,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.transparent : Colors.black ,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}