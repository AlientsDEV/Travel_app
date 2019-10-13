import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app/screens/second_screen.dart';


class BuildListItem extends StatelessWidget{

  final String image;
  BuildListItem({this.image});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(img: image,)));
      },
      child: Container(
        height: 255.0,
        width: 210.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 10.0,
              height: 250.0,
              width: 190.0,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image,),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.withOpacity(0.5)
                ),
              ),
            ),
            Positioned(
              top: 15.0,
              left: 5.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 30.0,
                    width: 120.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0)
                      ),
                      color: Colors.blueGrey,
                    ),
                    child: Text(
                      '06 days 16 hours',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    height: 30.0,
                    width: 50.0,
                    alignment: Alignment.center,
                    child: Text(
                      '-20%',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0)
                      ),
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20.0,
              left: 20.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Singahura',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  FlutterRatingBar(
                    onRatingUpdate: (rating){},
                    itemSize: 15.0,
                    initialRating: 3,
                    allowHalfRating: true,
                    itemCount: 5,
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.flight_takeoff,color: Colors.white,size: 20.0,),
                      Text(
                        '  Ha Noi - May 20,2019',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}