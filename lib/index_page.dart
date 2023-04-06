import 'dart:js';

import 'package:china_travel/province_list_page.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor : Color.fromARGB(255, 212, 37, 40),
        title: Row(
          children: [
            const Text("China Tourist Attractions "),
            Icon(Icons.airplanemode_on_outlined),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          //color: Colors.black26,
          image: DecorationImage(
            image: AssetImage('assets/images/CT01.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Pai Tiao Kan",
                style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 176, 27, 12),
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(3.0, 3.0),
                        blurRadius: 2.0,
                        color: Colors.redAccent.shade200,
                      ),

                    ],
                ),
              ),
            ),

            //Container(child: Expanded(child: Image.asset("assets/images/ct02.jpg"))),

            SizedBox(
              height: 15,
            ),

            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 239, 123, 123),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 241, 151, 145).withOpacity(0.5),
                    blurRadius: 2,
                    offset: Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              width: 100,
              height: 100,
              child: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => province_list_page()));

                  },
                  icon: Icon(Icons.navigate_next_outlined),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "click on button to go to next page",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 176, 27, 12),

                ),

              ),
            ),
          ],
        ),
      )
    );
  }
}
