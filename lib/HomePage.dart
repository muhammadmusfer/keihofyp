import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFFF7F9F9),
          child: ListView(
            padding: EdgeInsets.zero,
            children: ListTile.divideTiles(
                context: context,
                color: Colors.black,
                tiles: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xFF37474f),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Keiho',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '(Location Reminder)',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Icon(
                            Icons.location_on_rounded,
                            size: 35.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF1B2631),
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Alarm List',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF1B2631),
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF1B2631),
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Exit',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF1B2631),
                      ),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  Divider(),
                ]).toList(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  hintText: "Alarm Title",
                  hintStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  labelText: "Title",
                  labelStyle: TextStyle(
                    color: Color(0xFFB9770E),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  fillColor: Color(0xFFF4F6F7),
                  border: InputBorder.none,
                ),
                obscureText: false,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                minLines: 3,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  alignLabelWithHint: true,
                  hintText: "Description",
                  hintStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  labelText: "Description",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB9770E),
                    fontSize: 30.0,
                  ),
                  filled: true,
                  fillColor: Color(0xFFF4F6F7),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    Container(
                      height: 50.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF9A825),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.list_alt_rounded,
                          color: Color(0xFFF4F6F7),
                          size: 35.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF9A825),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                          color: Color(0xFFF4F6F7),
                          size: 35.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
