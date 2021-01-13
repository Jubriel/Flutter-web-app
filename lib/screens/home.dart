import 'package:flutter/material.dart';
// import 'package:house_price/widgets/input_field.dart';
// import 'package:house_price/widgets/value_field.dart';
// import 'package:house_price/widgets/agree.dart';
import 'Login.dart';
import 'form.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding:
            EdgeInsets.only(top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 3.3,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.lightBlue[600],
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
                              "Predict House Price",
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
                              "Predicting the House price gives an estimated value the required house",
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
                                return new Login();
                              }));
                            },
                            child: Text(
                              "Main",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(
                        top: 25.0, right: 70.0, left: 70.0, bottom: 10.0),
                    child: Center(
                        child: SizedBox(
                            width: 600, child: FormScreen()))
                    // Column(
                    //   children: <Widget>[
                    //     //InputField Widget from the widgets folder
                    //     InputField(label: "Location", content: "Area"),

                    //     SizedBox(height: 20.0),

                    //     //Gender Widget from the widgets folder
                    //     Aggrenment(),

                    //     SizedBox(height: 20.0),

                    //     //InputField Widget from the widgets folder
                    //     InputField(label: "Locality", content: "Neighborhood"),

                    //     SizedBox(height: 20.0),

                    //     //InputField Widget from the widgets folder
                    //     InputField(label: "Type", content: "Style"),

                    //     SizedBox(height: 20.0),

                    //     //ValueField Widget from the widgets folder
                    //     ValueField(label: "Bedrooms", value: 0),

                    //     SizedBox(height: 20.0),

                    //     //ValueField Widget from the widgets folder
                    //     ValueField(label: "Bathrooms", value: 0),

                    //     SizedBox(height: 20.0),

                    //     //ValueField Widget from the widgets folder
                    //     ValueField(label: "Toilets", value: 0),

                    //     SizedBox(height: 20.0),

                    //     //ValueField Widget from the widgets folder
                    //     ValueField(label: "Parking Spaces", value: 0),

                    //     SizedBox(height: 20.0),

                    //     //ValueField Widget from the widgets folder
                    //     ValueField(label: "Year", value: 0),

                    //     SizedBox(
                    //       height: 40.0,
                    //     ),

                    //     Row(
                    //       children: <Widget>[
                    //         SizedBox(
                    //           width: 170.0,
                    //         ),
                    //         FlatButton(
                    //           color: Colors.grey[200],
                    //           onPressed: () {},
                    //           child: Text("Cancel"),
                    //         ),
                    //         SizedBox(
                    //           width: 20.0,
                    //         ),
                    //         FlatButton(
                    //           color: Colors.lightBlue,
                    //           onPressed: () {},
                    //           child: Text(
                    //             "Get Price",
                    //             style: TextStyle(color: Colors.white),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
