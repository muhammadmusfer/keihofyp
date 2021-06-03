import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'Constant.dart';

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
      drawer: kAppDrawer,
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
                      style: kLocationStyle,
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
                style: kDistanceStyle,
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
                    style: kUnitDistance,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: kWhiteColor,
                  inactiveTrackColor: Color(0xFF8D8E98),
                  thumbColor: kGoldenColor,
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
                    color: kWhiteColor,
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
              color: kGoldenColor,
              child: Center(
                child: Text(
                  'Submit',
                  style: kDistanceStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
