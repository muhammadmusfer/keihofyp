import 'package:flutter/material.dart';
import 'package:keiho/HomePage.dart';
import 'alarm_list.dart';

ThemeData kAppTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Color(0xFF455A64),
  primaryColor: Color(0xFF263238),
  backgroundColor: Color(0xFF2980B9),
);
TextStyle kTextFieldStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.black87,
);
TextStyle kLabelStyle = TextStyle(
  color: kGoldenColor,
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);
Color kWhiteColor = Color(0xFFF4F6F7);
TextStyle kHintStyle = TextStyle(
  color: Colors.blueGrey,
);

Color kGoldenColor = Color(0xFFB9770E);
Color kDrawerHeaderBackground = Color(0xFF37474f);
TextStyle kDrawerTitle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);
TextStyle kUnitDistance = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98),
);

TextStyle kSubmitButtonStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);
TextStyle kDistanceStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 24.0,
  color: Color(0xFFF9A825),
);
TextStyle kLocationStyle = TextStyle(
  color: Color(0xFF212121),
  fontSize: 20.0,
);
TextStyle kDrawerSubtitle = TextStyle(
  fontSize: 20.0,
);
TextStyle kListTileStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF1B2631),
);

Drawer kAppDrawer = Drawer(
  child: Container(
    color: kWhiteColor,
    child: ListView(
      padding: EdgeInsets.zero,
      children: ListTile.divideTiles(color: Colors.black, tiles: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: kDrawerHeaderBackground,
          ),
          child: Center(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Keiho',
                      style: kDrawerTitle,
                    ),
                    Text(
                      '(Location Reminder)',
                      style: kDrawerSubtitle,
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
            style: kListTileStyle,
          ),
          onTap: () {
            Navigator.push(
              this context,
              MaterialPageRoute(
                builder: (context) => AlarmList(),
              ),
            );
          },
        ),
        ListTile(
          title: Text(
            'About',
            style: kListTileStyle,
          ),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text(
            'Exit',
            style: kListTileStyle,
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
);
