import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(accentColor: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      title: 'Splashscreen',
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Splashscreen(),
      ),
    ));

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
  
}

class _SplashscreenState extends State<Splashscreen> {
  final TextStyle leotheme =
      TextStyle(color: Colors.red, fontSize: 70.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
     //this is actually the parent widget which contain our image and also the opacity propertie
        Opacity(
          opacity:0.9 ,  
          child: Container(
            height: 650.0,
            width: 410,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('images/islamia.jpg'),//this is the image that we print on the whole screen

                  alignment: Alignment.topCenter),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          top: 280.0,
          left: 0,
          right: 0,
          child: Column(
            children: <Widget>[
              Text(
                "Islamians",
                style: leotheme,
              ),
              SizedBox(
                height: 20.0,
              ),
      //similarly we have a loading indicator
              CircularProgressIndicator(),
            ],
          ),
        ),
      ],
    );
  }
}
