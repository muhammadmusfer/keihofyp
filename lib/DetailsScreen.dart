import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

int height = 500;
DateTime myDate = DateTime.now();
String dateStr =
    "${myDate.year.toString()}-${myDate.month.toString().padLeft(2, '0')}-${myDate.day.toString().padLeft(2, '0')}";
bool checkedValue = false;

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
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
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xFFd6d6d6),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    child: Text(
                      'Select Location Mark Here',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              new Spacer(),
              Icon(
                Icons.location_on,
                size: 40.0,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Text(
                'Distance',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Color(0xFFF9A825),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    height.toString(),
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'm',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Color(0xFF8D8E98),
                  thumbColor: Color(0xFFFBC02D),
                  overlayColor: Color(0x29EB1555),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 10.0),
                ),
                child: Slider(
                  value: height.toDouble(),
                  min: 100,
                  max: 2000,
                  onChanged: (double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xFFd6d6d6),
                  ),
                  child: Center(
                    child: Text(
                      dateStr,
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFF212121),
                      ),
                    ),
                  ),
                ),
                padding: EdgeInsets.only(
                  left: 5,
                ),
              ),
              new Spacer(),
              IconButton(
                icon: Icon(Icons.date_range_sharp),
                color: Color(0xFFd6d6d6),
                iconSize: 40.0,
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2021, 1, 1),
                      maxTime: DateTime(2050, 12, 12), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    setState(() {
                      myDate = date;
                      dateStr =
                          "${myDate.year.toString()}-${myDate.month.toString().padLeft(2, '0')}-${myDate.day.toString().padLeft(2, '0')}";
                    });
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Transform.scale(
            scale: 1.1,
            child: CheckboxListTile(
              activeColor: Colors.transparent,
              title: Text("Notification"),
              value: checkedValue,
              onChanged: (newValue) {
                setState(() {
                  checkedValue = newValue;
                  print(checkedValue);
                });
              },
              secondary: const Icon(
                Icons.notifications,
                color: Color(0xFFd6d6d6),
              ), //  <-- leading Checkbox
            ),
          ),
          Transform.scale(
            scale: 1.1,
            child: CheckboxListTile(
              activeColor: Colors.transparent,
              title: Text("Alarm"),
              value: checkedValue,
              onChanged: (newValue) {
                setState(() {
                  checkedValue = newValue;
                  print(checkedValue);
                });
              },
              secondary: const Icon(
                Icons.alarm,
                color: Color(0xFFd6d6d6),
              ), //  <-- leading Checkbox
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              color: Color(0xFFF9A825),
              child: Center(
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
