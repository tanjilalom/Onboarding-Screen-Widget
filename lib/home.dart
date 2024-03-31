import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _SplashState();
}

class _SplashState extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.deepPurple[100],
          child: Center(
            child: GestureDetector(
              child: Text("This is Home Page", style: TextStyle(fontSize: 20),),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
