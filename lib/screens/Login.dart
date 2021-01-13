import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Padding(
        padding:
            EdgeInsets.only(top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Container(
            decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/dream_house.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 3.3,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.lightBlue[300],
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 85.0, right: 50.0, left: 50.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Text(
                              "Go ahead and Choose",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Text(
                              "Get Housing Prices",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          FlatButton(
                            color: Colors.lightBlue,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return new Home();
                              }));
                            },
                            child: Text(
                              "Buy / Sell",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          FlatButton(
                            color: Colors.lightBlue,
                            onPressed: () {},
                            child: Text(
                              "Rental",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //     padding: EdgeInsets.only(
                //         top: 140.0, right: 70.0, left: 70.0, bottom: 5.0),
                //     decoration: BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage("assets/dream_house.jpg"),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //     child: null),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
