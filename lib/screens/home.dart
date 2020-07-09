import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Center(
          child: Column(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(150)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150.0),
                child: Image.asset(
                  'assets/logom.png',
                    width: 110.0,
                    height: 110.0,
                    fit: BoxFit.fill,
                ),
          ),
            ),
            Padding(child: Text("Giriş başarılı!"),padding: EdgeInsets.only(top:30),),
            Padding(child: Text("VBTIntern'e Hoşgeldiniz", style:TextStyle(fontSize: 30)),padding: EdgeInsets.only(top:10),),
          ],)
        ),
      ),
    );
  }
}