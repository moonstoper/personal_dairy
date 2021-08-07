import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:personal_dairy/homescreen/homeHeader.dart';

class CalenderScreen extends StatefulWidget {
  CalenderScreen({Key key}) : super(key: key);
  static const String routeName = "/calendar";
  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  CalendarController calendarController;

  @override
  void initState() {
    super.initState();
    calendarController = CalendarController();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // fit: StackFit.expand,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Calendar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            TableCalendar(
              // startDay: DateTime(1),
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarController: calendarController,
              calendarStyle: calendarStyle(),
              // initialCalendarFormat: CalendarFormat.month,
              availableCalendarFormats: const {CalendarFormat.month: "Month"},
              builders: CalendarBuilders(
                  selectedDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                  todayDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.pink.shade100,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                  singleMarkerBuilder: (context, date, event) => Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [
                              Colors.pink.shade200,
                              Colors.green.shade100
                            ],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                                tileMode: TileMode.repeated)),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                tileColor: Colors.pink.shade50,
                title: Text("Title"),
                subtitle: Text("Content"),
                trailing: Text("07:22 pm"),
                dense: true,
                enableFeedback: true,
                minLeadingWidth: 70,
              ),
            )
          ],
        ),
      ),
    );
  }
}

CalendarStyle calendarStyle() {
  return CalendarStyle(
      renderDaysOfWeek: false,
      markersColor: Colors.red,
      todayColor: Colors.pink.shade100,
      selectedColor: Colors.pink.shade300,
      markersMaxAmount: 30
      // cellMargin: EdgeInsets.all(3)
      );
}
