import 'package:flutter/material.dart';




class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _name;
  String _email;
  String _password;
  String _url;
  String _phonenumber;
  String _calories;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }
        if (!RegExp(r"[@#$%^&*.<>]").hasMatch(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildURL() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Url'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'URL is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildPhonenumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone Number'),
      maxLength: 20,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _phonenumber = value;
      },
    );
  }

  Widget _buildCalories() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Calories'),
      validator: (String value) {
        int calories = int.tryParse(value);
        if (calories == null || calories <= 0) {
          return 'calories should be greater than 0';
        }
        return null;
      },
      onSaved: (String value) {
        _calories = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Prediction Form')),
        body: Container(
          margin: EdgeInsets.all(40),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildName(),
                _buildEmail(),
                _buildPassword(),
                _buildURL(),
                _buildPhonenumber(),
                _buildCalories(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16.0),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();
                    print(_name);
                    print(_email);
                    print(_password);
                    print(_url);
                    print(_phonenumber);
                    print(_calories);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
