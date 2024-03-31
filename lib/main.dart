import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "First",
            body: "This is a First Page",
            image: Image.network("https://cdn.discordapp.com/attachments/899718549076078674/1162007098540949545/batman.jpg?ex=6617da71&is=66056571&hm=d6ff1ad506f5b53792403f52ba4dbc4062aa751271defe9192ac58df0e6e4f2a&"),
          ),
          PageViewModel(
            title: "Second",
            body: "This is a Second Page",
            image: Image.network("https://cdn.discordapp.com/attachments/899718549076078674/1084179908063936623/319753110_874712600640861_4671182201969384642_n.jpg?ex=661acdb9&is=660858b9&hm=16b8db0be664bca81cbcbb3f2a14f935994d739c511a3c1844de64123e2a98be&"),
          ),
          PageViewModel(
            title: "Third",
            body: "This is a Third Page",
            image: Image.network("https://cdn.discordapp.com/attachments/899718549076078674/1085152396386258964/315889487_657961542643284_9071858905654885167_n.jpg?ex=66151cec&is=6602a7ec&hm=cf7abb70647649df374e7e4ba3b2ea75ddae28f5c6e2cc102b3b5f404f16e0e9&"),
          ),
        ],
        onDone: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Splash1()));
        },
        done: Text("Done"),
        /*showSkipButton: false,
        skip: Text("Skip"),*/
        showBackButton: true,
        back: Text("Back"),
        showNextButton: true,
        next: Text("Next"),
        dotsDecorator: DotsDecorator(
          size: Size(5.0,5.0),
          color: Colors.greenAccent,
          activeSize: Size(15, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))
          )
        ),
      ),
    );
  }
}

