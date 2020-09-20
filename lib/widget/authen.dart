import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kidproduct/utility/my_style.dart';
import 'package:kidproduct/widget/register.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true;
  int indexTheme = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
                center: Alignment(0, -0.5),
                radius: 1.5,
                colors: [
              Colors.white,
              MyStyle().primaryColors[indexTheme],
            ])),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildContainer(),
                buildText(),
                buildTextFieldUser(),
                buildTextFieldPassword(),
                buildRaisedButton(),
                buildFlatButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FlatButton buildFlatButton() => FlatButton(
      onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Register(),
            ),
          ),
      child: Text(
        'New Register',
        style: TextStyle(
          color: Colors.pink.shade400,
          fontStyle: FontStyle.italic,
        ),
      ));

  Container buildRaisedButton() => Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: RaisedButton(
        color: Color(0xFFFFA07A), //ขึ้นต้นด้วย 0xFF
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ));

  Container buildTextFieldUser() => Container(
        margin: EdgeInsets.only(bottom: 16),
        width: 250,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'User :',
          ),
        ),
      );

  Container buildTextFieldPassword() => Container(
        width: 250,
        child: TextField(
          obscureText: statusRedEye,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye),
              onPressed: () {
                setState(() {
                  statusRedEye = !statusRedEye;
                });
              },
            ),
            border: OutlineInputBorder(),
            labelText: 'Password :',
          ),
        ),
      );

  Text buildText() {
    return Text(
      'ระบบ Product',
      style: GoogleFonts.sriracha(
          textStyle: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        color: Colors.red[900],
      )),
    );
  }

  Container buildContainer() {
    return Container(
      width: 150,
      child: Image.asset('images/logo.png'),
    );
  }
}
