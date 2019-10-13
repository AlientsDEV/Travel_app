import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

import 'package:travel_app/widgets/favorite_new.dart';


class SecondScreen extends StatefulWidget{

  final String img;
  final String title;
  SecondScreen({this.title,this.img});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String text = 'Tokyo was originally a small fishing village named Edo, in what was formerly part of the old Musashi Province. Edo was first fortified by the Edo clan, in the late twelfth century. In 1457, Ōta Dōkan built Edo Castle. In 1590, Tokugawa Ieyasu was transferred from Mikawa Province (his lifelong base) to Kantō region. When he became shōgun in 1603, Edo became the center of his ruling.';

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

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              expandedHeight: MediaQuery.of(context).size.height *0.45,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: <Widget>[
                    Image.asset(
                      widget.img,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *0.45,
                      color: Colors.black45,
                      colorBlendMode: BlendMode.darken,
                    ),
                    Positioned(
                      top: 25.0,
                      right: 30.0,
                      left: 30.0,
                      child: ClipRect(
                        child: BackdropFilter(
                            filter: prefix0.ImageFilter.blur(
                              sigmaX: 8,
                              sigmaY: 8,
                            ),
                            child: _buildSearchContainer(),
                        ),
                      )
                    )
                  ],
                ),
              )
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Asia',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      text,
                      style: TextStyle(
                        height: 1.3,
                        color: Colors.grey,
                        fontSize: 13.0
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Row(
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
                                'Suggest',
                                style: isSelected ? selectedItem : unSelectedItem,
                              ),
                              SizedBox(height: 5.0,),
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
                              SizedBox(height: 5.0,),
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
            )
          ],
        ),
      ),
    );
  }



  Widget _buildSearchContainer(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,),
      height: 40.0,
      color : Colors.white30,
      width: MediaQuery.of(context).size.width * 0.5 ,
      child:TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search for a place...',
              hintStyle: TextStyle(
                color: Colors.black87
              )
            ),
      ),
    );
  }
}