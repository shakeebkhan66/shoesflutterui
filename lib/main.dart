import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoesflutterui/FadeAnimation.dart';
import 'package:shoesflutterui/Shoes.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
            "Shoes Store",
          style: TextStyle(
            color: Colors.black, fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.black,),
              onPressed: (){}
          ),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black,),
              onPressed: (){}
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                        aspectRatio: 2.2/1,
                      child: FadeAnimation(1, Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(),
                          ),
                        ),
                      )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeAnimation(1.1, Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            'Sneakers',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeAnimation(1.2 ,Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            'Soccer',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeAnimation(1.3, Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            'Golf',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: FadeAnimation(1.4, Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            'Football',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              FadeAnimation(1.5 ,makeItem(image: "assets/images/1.jpg", tag: "red", context: context)),
              FadeAnimation(1.6, makeItem(image: "assets/images/2.jpg", tag: "brown", context: context)),
              FadeAnimation(1.7, makeItem(image: "assets/images/3.jpg", tag: "blue", context: context)),
              FadeAnimation(1.8, makeItem(image: "assets/images/4.jpg", tag: "yellow", context: context)),
              FadeAnimation(1.9, makeItem(image: "assets/images/5.jpg", tag: "black", context: context)),
            ],
          ),
        ),
      ),
    );
  }
  Widget makeItem({image, tag, context}){
      return Hero(
          tag: tag,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes(image: image,)));
            },
            child: Container(
              height: 250,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                 image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              FadeAnimation(1, Text("Sneakers", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
                              SizedBox(height: 10,),
                              FadeAnimation(1.1, Text("Nike", style: TextStyle(color: Colors.white, fontSize: 20),)),
                            ],
                          )
                      ),
                      FadeAnimation(1.2, Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite_border,
                            size: 20,
                          ),
                        ),
                      )),
                    ],
                  ),
                  FadeAnimation(1.2, Text("5K", style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
          )
      );
}
}

