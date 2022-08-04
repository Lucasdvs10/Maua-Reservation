import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/widgets/generic_button.dart';
import 'package:table_calendar/table_calendar.dart';

import '../Utils.dart';

class CalendarCard extends StatefulWidget {
  const CalendarCard({Key? key}) : super(key: key);

  @override
  State<CalendarCard> createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  GenericButton proximoButton = GenericButton.Proximo(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TableCalendar(
            focusedDay: focusedDay,
            firstDay: DateTime(2002, 6, 28),
            lastDay: DateTime(2027, 1, 10),
            headerStyle:
                const HeaderStyle(formatButtonVisible: false, titleCentered: true),
            calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                    color: Utils.AzulDaDev, shape: BoxShape.circle)),
            currentDay: focusedDay,
            selectedDayPredicate: (day) => isSameDay(selectedDay, day),
            onDaySelected: (DateTime _selectedDay, DateTime _focusedDay) {
              setState(() {
                focusedDay = _focusedDay;
                selectedDay = _selectedDay;
                proximoButton.SetButtonEnable(true);
              });
            },
          ),
          Positioned(
            right: 20,
            bottom: 50,
            child: proximoButton,
          )
        ],
      ),
    );
  }
}
