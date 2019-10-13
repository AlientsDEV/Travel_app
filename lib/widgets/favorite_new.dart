import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class FavoriteAndNew extends StatelessWidget{

  final String image;
  FavoriteAndNew({this.image});


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 125.0,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 20.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 120.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 3.0,
                                  blurRadius: 5.0
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        right: 0.0,
                        child: Container(
                          alignment: Alignment.center,
                          height: 20.0,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.2),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              )
                          ),
                          child: Text(
                            'Standard',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12.0
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0.0,
                  bottom: 0.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(image)
                            ),
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Nagoya & Tokyo',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
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
                              Icon(Icons.flight_takeoff,color: Colors.black,size: 20.0,),
                              Text(
                                '  Ha Noi - May 20,2019',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
        ],
      ),
    );
  }

}