import 'package:flutter/material.dart';

class Lose_Game extends StatefulWidget {
  const Lose_Game({Key? key}) : super(key: key);

  @override
  State<Lose_Game> createState() => _Lose_GameState();
}

class _Lose_GameState extends State<Lose_Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/lose.png",height: 200,width: 200,fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("oops !",style: TextStyle(color: Color(0xffD4DFF),fontSize: 25)),
            ),
            Text("Sorry You are",style: TextStyle(color: Color(0xffD4D4FF),fontSize: 25)),
            Text("the lose the",style: TextStyle(color: Color(0xffD4D4FF),fontSize: 25)),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushReplacementNamed(context, "/");
                });
              },
              child: Center(child: Container(height: 60,width: 120,child: Text("Try Again",style: TextStyle(color: Color(0xffD6D6D6),fontSize: 25))))),
          ],
        ),
      ),
    );
  }
}
