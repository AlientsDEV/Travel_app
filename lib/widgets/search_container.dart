import 'package:flutter/material.dart';


class BuildSearchContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: EdgeInsets.only(left: 20.0,top: 15.0,bottom: 15.0),
        child:  Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0))
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            height: 45.0,
            width: MediaQuery.of(context).size.width * 0.75 ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Icon(Icons.search,color: Colors.black54,),
                  onTap: (){},
                ),
                const SizedBox(width: 10.0,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'search...',
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

}