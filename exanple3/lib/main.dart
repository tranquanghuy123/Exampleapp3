import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    print('height la: ');
    print(heightScreen);
    return Container(
        height: heightScreen,
        width: widthScreen,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.grey),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Container(
                    width: widthScreen,
                    height: 400,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: widthScreen,
                                height: 290,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40))
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        child: Container(
                                          width: widthScreen,
                                          height: 250,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 3, color: Colors.yellowAccent),
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40),
                                                bottomRight: Radius.elliptical(60, 40),
                                                bottomLeft: Radius.elliptical(60, 40))
                                          ),
                                        )
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        width: 300,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.red),
                                      ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 80,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 3, color: Colors.red),
                                                ),
                                            ),
                                            Container(
                                              width: 80,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 3, color: Colors.red),
                                              ),
                                            ),
                                            Container(
                                              width: 80,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 3, color: Colors.red),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    )
                                  ],
                                ),
                              )
                            ),
                          ],
                        ),
                        Container(
                          height: 150,
                          width: widthScreen,
                          color: Colors.orange,
                        ),
                        Container(
                          height: 150,
                          width: widthScreen,
                          color: Colors.green,
                        ),
                        Container(
                          height: 150,
                          width: widthScreen,
                          color: Colors.brown,
                        ),
                      ],
                    ),
                  ),
                ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(22),
                width: widthScreen,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                          color: Colors.blueGrey, size: 35,),
                        Icon(Icons.work, color: Colors.blueGrey, size: 35,),
                        Icon(Icons.menu, color: Colors.blueGrey, size: 35,)
                      ],
                    )
                  ],
                ),
              ),
            )
        ]
    )
    );
  }
}