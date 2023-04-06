import 'package:china_travel/model/tourist_attraction.dart';
import 'package:flutter/material.dart';


class Place_Detail extends StatelessWidget {
  final Tourist_attraction tourist_attraction;
  const Place_Detail({Key? key, required this.tourist_attraction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String uri = tourist_attraction.imageURL;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color.fromARGB(255, 212, 37, 40),
        title: Row(
          children: [
            Text(tourist_attraction.name),
            Icon(Icons.location_pin),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 247, 194, 183),
            child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  tourist_attraction.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Color.fromARGB(255, 176, 27, 12)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  tourist_attraction.location,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Image.asset(uri),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  tourist_attraction.detail,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),

              ],
            ),
          )
        ]
      )
    );
  }
}
