import 'package:horror_story/Hallowen_Story.dart';
import 'package:horror_story/about_us.dart';
import 'package:horror_story/bedtime.dart';
import 'package:horror_story/creepy_story.dart';
import 'package:horror_story/Scary_story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horror_story/true_story.dart';

void main() {
  runApp(MaterialApp(
    title: "Bedtime Horror Story",
    home: mainclass(),
  ));
}

class mainclass extends StatefulWidget {
  @override
  State<mainclass> createState() => _mainclassState();
}

class _mainclassState extends State<mainclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(""
            " "),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffe81152), Color(0xffee7b72)])),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/background.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(40),
              alignment: Alignment.center,
              child: Text(
                "   Bedtime\nHorror Story",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: 'monsterfont'),
              ),
            ),

            //Bedtime Story
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bedtime()),
                );
              },
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 3, color: Colors.pink),
                ),
                child: Center(
                  child: Text(
                    "BEDTIME STORY",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'quackerslate',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            //Creepy Story
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (cnx) => Creepy()));
              },
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 3, color: Colors.pink),
                ),
                child: Center(
                  child: Text(
                    "CREEPY STORY",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'quackerslate',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 40),

            //Scary Story
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (cnx) => Scary()));
              },
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3, color: Colors.pink),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    " SCARY STORY",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'quackerslate',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 40),

            //Hallowen_Story
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (cnx) => Halloween()));
              },
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 3, color: Colors.pink),
                ),
                child: Center(
                  child: Text(
                    "HALLOWEN STORY",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'quackerslate',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 40),

            //True Story
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (cnx) => True_story()));
              },
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 3, color: Colors.pink),
                ),
                child: Center(
                  child: Text(
                    "TRUE STORY",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'quackerslate',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
              // padding:EdgeInsets.all(70) ,
              padding: EdgeInsets.only(top: 10),
              children: [

            DrawerHeader(
                decoration: BoxDecoration(),
                child: Stack(children: <Widget>[
                  Align(
                      alignment : Alignment(.05,-1.15),
                      child:
                      Text(

                        "Developed By",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoSlab',
                        ),
                        textAlign: TextAlign.center,
                      )),
                Align(
                  alignment: Alignment(0.05,-80.00),
                  child:
                  Container(

                    decoration: BoxDecoration(

                        shape: BoxShape.circle,

                       // border: Border.all(color: Colors.black)
                      ),
                    child: Image.asset('image/DeepDive.png'),
                  )),
                ]),
    ),


                TextButton(
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (cnx) => about()));
                },
                    child: Text("About Us"),
                )
          ])),
    );
  }


}

