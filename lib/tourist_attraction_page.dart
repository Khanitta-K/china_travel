import 'package:china_travel/creation/create_list_place.dart';
import 'package:china_travel/model/province.dart';
import 'package:china_travel/place_detail.dart';
import 'package:flutter/material.dart';
import 'model/tourist_attraction.dart';

class Tourist_attraction_page extends StatefulWidget {
  final Province province;
  const Tourist_attraction_page({Key? key, required this.province}) : super(key: key);

  @override
  State<Tourist_attraction_page> createState() => _Tourist_attraction_pageState();
}

class _Tourist_attraction_pageState extends State<Tourist_attraction_page> {
  @override
  Widget build(BuildContext context) {
    String name = widget.province.name;
    Place p = Place();
    List place = p.getList(name);


    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color.fromARGB(255, 212, 37, 40),
        title: Row(
          children: [
            Text(widget.province.name),
            Icon(Icons.location_pin),
          ],
        ),
      ),
      body:ListView.builder(
        itemCount: place.length,
        //callback function
        itemBuilder: (BuildContext context, int index) {
          var pl = place[index];

          return Card(
            color: Color.fromARGB(255, 241, 151, 145),
            child: InkWell(
              onTap: () {
                _handleClickProjectItem(pl);
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          pl.imageURL,
                          width: 70.0,
                          height: 70.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(pl.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 176, 27, 12)
                                  ),

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(pl.description),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleClickProjectItem(Tourist_attraction tourist_attraction) {
    print(tourist_attraction.name);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Place_Detail(tourist_attraction: tourist_attraction)),
    );
  }
}

