import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app/screens/second_screen.dart';
import 'package:travel_app/widgets/favorite_new.dart';
import 'package:travel_app/widgets/list_item.dart';
import 'package:travel_app/widgets/search_container.dart';
import 'package:travel_app/widgets/tabs.dart';


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildAppBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ondue',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        height: 260,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            BuildListItem(image:'assets/tokyo.jpg'),
                            BuildListItem(image:'assets/nagoya.jpg'),
                            BuildListItem(image:'assets/madrid.jpg'),
                            BuildListItem(image:'assets/ram.jpg'),
                            BuildListItem(image:'assets/amsterdam.jpg'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: BuildTabs(),
                      ),
                      SizedBox(height: 20.0,),
                      ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          FavoriteAndNew(image:'assets/nagoya.jpg'),
                          FavoriteAndNew(image:'assets/bali.jpg'),
                          FavoriteAndNew(image:'assets/amsterdam.jpg'),
                          FavoriteAndNew(image:'assets/amstrdam2.jpg'),
                          FavoriteAndNew(image:'assets/madrid.jpg'),
                          FavoriteAndNew(image:'assets/ram.jpg'),
                          FavoriteAndNew(image:'assets/bali.jpg'),
                          FavoriteAndNew(image:'assets/amsterdam.jpg'),
                          FavoriteAndNew(image:'assets/amstrdam2.jpg'),
                          FavoriteAndNew(image:'assets/madrid.jpg'),
                          FavoriteAndNew(image:'assets/ram.jpg'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _buildAppBar(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          BuildSearchContainer(),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
          )
        ],
      ),
    );
  }





}









