import 'package:flutter/material.dart';
import 'package:polyglot_nibba/AllpassedArguments.dart';

class SecondScreen extends StatelessWidget{

static const routName='/SecondScreen route';
@override
Widget build(BuildContext context) {
   AllpassedArguments args=ModalRoute.of(context).settings.arguments;
  return Scaffold(
   appBar: AppBar(
     title: args.title,
   ),
   body: Center(child: args.message,),
  );
}
}