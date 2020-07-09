import 'dart:ui';

import 'package:LoginForm/screens/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = "Onurgule";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(child: buildRow(),padding: EdgeInsets.only(top:100,left:50,right:50),),
      
    );
  }

  Column buildRow() => Column(
    children: <Widget>[
      Column(children: <Widget>[
        Row(children: <Widget>[
          Text("VBTIntern",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 25, fontWeight: FontWeight.bold)),
          Icon(Icons.arrow_forward_ios,color: Colors.lightBlueAccent,)
        ]), 
        Text("Çalışan Girişi")],crossAxisAlignment: CrossAxisAlignment.start,),
      Padding(
        padding: const EdgeInsets.only(top:35),
        child: Column(children: <Widget>[
            Text("Hoşgeldiniz!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300),), 
            Text("Giriş yapmak için devam edin")],crossAxisAlignment: CrossAxisAlignment.start),
      ),
      Padding(padding: EdgeInsets.only(top:45),
      child: Column(children: <Widget>[
        TextField(decoration: InputDecoration(
          labelText: 'Email Adresiniz',
          floatingLabelBehavior: FloatingLabelBehavior.always
        ),keyboardType: TextInputType.emailAddress, ),
        TextField(decoration: InputDecoration(
          labelText: 'Şifreniz',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffix: GestureDetector(
            onTap: () => AlertDialog(title: Text("Şifrenizi mi unuttunuz?"), content: Text("Kendini de unutsaydın!"),),
            child: Text("Şifremi Unuttum",style: TextStyle(color:Colors.lightBlueAccent),)
          )
        ),obscureText: true,)
      ],),),
      Padding(padding: EdgeInsets.only(top:30), child:FlatButton(child:Text("Giriş"),textColor: Colors.white, shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(18), side: BorderSide(color:Colors.lightBlueAccent)), color: Colors.lightBlueAccent, onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()), )))
      ],
      
        crossAxisAlignment: CrossAxisAlignment.start);
}