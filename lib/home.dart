import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int i=0;
  int count=0;
  int press=0;
  List queList = [
    "1. In the Film 'OMG Oh My God' Kanji Bhai filed a case against whom for the damage of his shop due to an earthquake ? ",
    "2. What is the new name of the Hyderabad franchise that would replace Decan Charges in IPL6 ? ",
    "3. In India, under which Union Ministry does the 'Rajbhasha Vibhag' function ? ",
    "4. According to a proverb, which is said to be 'the mother of invention' ? ",
    "5. Which actress got married to Siddharth Roy Kapur in 2012 ? ",
    "6. To whom did Ravindranath Tagore dedicate his book 'visva parichay' written on science ",
    "7. Which of these is a chemical element present in the periodic table ? ",
    "8. Which of these is not a work of Kalidas ? ",
    "9. According to the Devi, Bhagavata, from the tears of which god is the rudraksha tree believed to have been created ? ",
    "10. Which of these names means 'gold-like' ? ",
  ];
  List optA=[
    "A.Bharat Mata",
    "A.Sun Chargers",
    "A.Home Affairs",
    "A.Society",
    "A.Prachi Desai",
    "A.Cv raman ",
    "A.Eurocium",
    "A.Raghuvamsham",
    "A.Vishnu",
    "A.Sonakshi",
  ];
  List optB=[
    "B.Parliament",
    "B.Nizam Jyothi",
    "B.HRD",
    "B.Problem",
    "B.Lisa Ray",
    "B.Satyendra nath Bose ",
    "B.Asiacium",
    "B.Kadambari",
    "B.Shiva",
    "B.Deepika",
  ];
  List optC=[
    "C.Mumbai City",
    "C.Andhra Aces",
    "C.Culture",
    "C.Science",
    "C.Vidya Balan",
    "C.Pc Royn",
    "C.Americium",
    "C.Vikramorvasiyam",
    "C.Krishna",
    "C.Sonam",
  ];
  List optD=[
    "D.Bhagwan",
    "D.Sun risers",
    "D.Law & Justice",
    "D.Necessity",
    "D.Sushmita Sen",
    "D.Jagdish Chandra Bose",
    "D.Africium",
    "D.Meghadutam",
    "D.Kamadeva",
    "D.Katrina",
  ];
  List optAns=['D','D','A','D','C','B','C','B','B','C'];

  List userAns=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.deepPurple,
                ]
            ),
          ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center( child: Text("${queList[i]}",style: TextStyle(fontSize: 20,color: Colors.black))),
            )),
      ),
          Divider(height: 1,color: Colors.purple),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    chek("A");
                    setState(() {
                      if(i<queList.length-1)
                      {
                        i++;
                      }
                    });
                  },child: Button(optA[i]),
                ),
                InkWell(
                  onTap: () {
                    chek("B");
                    setState(() {
                      if(i<queList.length-1)
                      {
                        i++;
                      }
                    });
                  },child: Button(optB[i]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    chek("C");
                    setState(() {
                      if(i<queList.length-1)
                      {
                        i++;
                      }
                    });
                  },child: Button(optC[i]),
                ),
                InkWell(
                  onTap: () {
                    chek("D");
                    setState(() {
                      if(i<queList.length-1)
                      {
                        i++;
                      }
                    });
                  },child: Button(optD[i]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget Button(String data)
  {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: Center(child: Text("$data",style: TextStyle(fontSize: 15,color: Colors.black))),
    );
  }
  void chek(String opt)
  {
   setState(() {
     if(i<queList.length)
       {
         userAns.add(opt);
       }
     if(userAns[i]==optAns[i])
       {
         Navigator.pushNamed(context, "won");
       }
     else
       {
         Navigator.pushNamed(context, "lose");
         i=0;
       }
   }); 
  }
}
