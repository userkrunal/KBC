import 'package:flutter/material.dart';

class Won_Price extends StatefulWidget {
  const Won_Price({Key? key}) : super(key: key);

  @override
  State<Won_Price> createState() => _Won_PriceState();
}

class _Won_PriceState extends State<Won_Price> {
  List price = [1000, 2000, 5000, 10000, 20000, 25000, 50000, 100000, 250000, 500000 ];
  int i=0;
  @override
  Widget build(BuildContext context) {
    int opt=ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/fire.png",width: 200,height: 200,fit: BoxFit.fill),
            Text("Your Answer Is Correct",style: TextStyle(color: Color(0xffC78640),fontSize: 25),),
            Text("You Won ${price[opt]}",style: TextStyle(color: Colors.amberAccent,fontSize: 25),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: InkWell(onTap: (){
                if(opt <= 9)
                {
                  Navigator.pushNamed(context, "start");
                }
                else
                {
                  Navigator.pushNamed(context, "finish");
                }

              },
                  child: Center(child: Container(height: 60, width: 120, child: Text("Next",style: TextStyle(color: Color(0xffD6D6D6),fontSize: 25),),))),
            )
          ],
        ),
      ),
    );
  }
}

