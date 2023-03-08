import 'package:flutter/material.dart';

class Finish extends StatefulWidget {
  const Finish({Key? key}) : super(key: key);

  @override
  State<Finish> createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("asset/images/fire.png",height: 200,width: 200,fit: BoxFit.fill),
          Text("Congratulations",
            style: TextStyle(color: Color(0xffC78640), fontSize: 25),),
          Text("Game over",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),),
          InkWell(onTap: () {
            Navigator.pushNamed(context, "/");
          },child: Container(
            width: 150,
            height: 70,
            child:  Text("Restart", style: TextStyle(color: Color(0xffD6D6D6), fontSize: 25),),),
          ),
        ],
      ),
    );
  }
}
