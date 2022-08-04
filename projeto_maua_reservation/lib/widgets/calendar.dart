import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarCard extends StatefulWidget {
  const CalendarCard({Key? key}) : super(key: key);

  @override
  State<CalendarCard> createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: focusedDay,
      firstDay: DateTime(2002, 6, 28),
      lastDay: DateTime(2027, 1, 10),
      currentDay: focusedDay,
      onDaySelected: (DateTime _selectedDay, DateTime _focusedDay) {
        setState(() {
          focusedDay = _focusedDay;
          selectedDay = _selectedDay;
        });
      },
    );
  }
}
