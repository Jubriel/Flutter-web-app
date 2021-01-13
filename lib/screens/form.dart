import 'package:flutter/material.dart';
import 'api.dart';
import 'dart:convert';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  TextEditingController _locationController = new TextEditingController();
  TextEditingController _localityController = new TextEditingController();
  TextEditingController _bedController = new TextEditingController();
  TextEditingController _bathController = new TextEditingController();
  TextEditingController _parkController = new TextEditingController();
  TextEditingController _toiletController = new TextEditingController();
  TextEditingController _estateController = new TextEditingController();
  TextEditingController _typeController = new TextEditingController();
  TextEditingController _yearController = new TextEditingController();

  String _location;
  String _locality;
  String _type;
  int _bed;
  int _bath;
  int _toilet;
  int _park;
  String _estate;
  int _year;

  
  final _scrollController = ScrollController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildLocation() {
    return TextFormField(
      controller: _locationController,
      decoration: InputDecoration(labelText: 'Location'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Location is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _location = value;
      },
    );
  }

  Widget _buildLocality() {
    return TextFormField(
      controller: _localityController,
      decoration: InputDecoration(labelText: 'Locality'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Locality is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _locality = value;
      },
    );
  }

  Widget _buildType() {
    return TextFormField(
      controller: _typeController,
      decoration: InputDecoration(labelText: 'Type'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Type is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _type = value;
      },
    );
  }

  Widget _buildBedrooms() {
    return TextFormField(
      controller: _bedController,
      decoration: InputDecoration(labelText: 'Bedrooms'),
      maxLength: 2,
      validator: (String value) {
        int bed = int.tryParse(value);
        if (bed == null || bed <= 0) {
          return 'bedrooms should be greater than 0';
        }
        return null;
      },
      onSaved: (String value) {
        _bed = int.tryParse(value);
      },
    );
  }

  Widget _buildEstate() {
    return TextFormField(
      controller: _estateController,
      decoration: InputDecoration(labelText: 'Estate'),
      maxLength: 3,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Estate is Required';
        }
        if (!RegExp(r"[YesNoyesnoYESNO]").hasMatch(value)) {
          return 'Yes or No';
        }
        return null;
      },
      onSaved: (String value) {
        _estate = value;
      },
    );
  }

  Widget _buildBathrooms() {
    return TextFormField(
      controller: _bathController,
      decoration: InputDecoration(labelText: 'Bathrooms'),
      maxLength: 2,
      validator: (String value) {
        int bath = int.tryParse(value);
        if (bath == null || bath <= 0) {
          return 'bathrooms should be greater than 0';
        }
        return null;
      },
      onSaved: (String value) {
        _bath = int.tryParse(value);
      },
    );
  }

  Widget _buildToilets() {
    return TextFormField(
      controller: _toiletController,
      decoration: InputDecoration(labelText: 'Toilets'),
      maxLength: 2,
      validator: (String value) {
        int tot = int.tryParse(value);
        if (tot == null || tot <= 0) {
          return 'Toilets should be greater than 0';
        }
        return null;
      },
      onSaved: (String value) {
        _toilet = int.tryParse(value);
      },
    );
  }

  Widget _buildParkings() {
    return TextFormField(
      controller: _parkController,
      decoration: InputDecoration(labelText: 'Parking Spaces'),
      maxLength: 2,
      validator: (String value) {
        int park = int.tryParse(value);
        if (park == null || park < 0) {
          return 'Parking Space is required';
        }
        return null;
      },
      onSaved: (String value) {
        _park = int.tryParse(value);
      },
    );
  }

  Widget _buildYear() {
    return TextFormField(
      controller: _yearController,
      decoration: InputDecoration(labelText: 'Year'),
      maxLength: 4,
      validator: (String value) {
        int year = int.tryParse(value);
        if (year == null || year <= 0) {
          return 'Input a correct year';
        }
        return null;
      },
      onSaved: (String value) {
        _year = int.tryParse(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: Text('PredictionForm')),
        body: Center(
      child: Scrollbar(
        controller: _scrollController,
        isAlwaysShown: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            margin: EdgeInsets.all(40),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLocation(),
                  _buildLocality(),
                  _buildType(),
                  _buildBedrooms(),
                  _buildBathrooms(),
                  _buildToilets(),
                  _buildParkings(),
                  _buildYear(),
                  _buildEstate(),
                  SizedBox(height: 50),
                  Container(
                    height: 100,
                    width: 100,
                    child: Text('Monkey King'),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    child: Text(
                      'Predict Price',
                      style: TextStyle(color: Colors.blue, fontSize: 16.0),
                    ),
                    onPressed: () async {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();
                      print(_location);
                      print(_locality);
                      print(_type);
                      print(_bed);
                      print(_bath);
                      print(_park);
                      print(_toilet);
                      print(_year);
                      print(_estate);
                      
                      var ans = await answer(
                          _location,
                          _locality,
                          _type,
                          _bed,
                          _bath,
                          _toilet,
                          _park,
                          _estate,
                          _year);
                      String anst = ans.body;
                      var body = json.decode(anst);
                      print(body);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
