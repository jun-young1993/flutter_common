import 'package:flutter/material.dart';
import 'package:flutter_common/models/goal/goal_progress.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class GoalProgressCalendar extends StatefulWidget {
  final List<GoalProgress> progresses;
  final DateTime focusedDay;
  final DateTime startDate;
  final DateTime endDate;
  final Function(DateTime)? onDaySelected;

  const GoalProgressCalendar({
    super.key,
    required this.progresses,
    required this.focusedDay,
    required this.startDate,
    required this.endDate,
    this.onDaySelected,
  });

  @override
  State<GoalProgressCalendar> createState() => _GoalProgressCalendarState();
}

class _GoalProgressCalendarState extends State<GoalProgressCalendar> {
  late DateTime _focusedDay;
  late DateTime _selectedDay;
  late CalendarFormat _calendarFormat;

  @override
  void initState() {
    super.initState();
    // Ensure focused day is within valid range
    _focusedDay = widget.focusedDay.isAfter(widget.endDate)
        ? widget.endDate
        : widget.focusedDay.isBefore(widget.startDate)
            ? widget.startDate
            : widget.focusedDay;
    _selectedDay = _focusedDay;
    _calendarFormat = CalendarFormat.month;
  }

  List<GoalProgress> _getProgressesForDay(DateTime day) {
    return widget.progresses.where((progress) {
      return progress.isSameDate(day);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar<GoalProgress>(
      firstDay: widget.startDate,
      lastDay: widget.endDate,
      focusedDay: _focusedDay,
      calendarFormat: _calendarFormat,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
        widget.onDaySelected?.call(selectedDay);
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      onPageChanged: (focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
      },
      calendarStyle: CalendarStyle(
        markersMaxCount: 1,
        markerDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          shape: BoxShape.circle,
        ),
        // Disable dates outside the goal period
        outsideDaysVisible: false,
        disabledTextStyle: TextStyle(
          color: Colors.grey[400],
        ),
      ),
      calendarBuilders: CalendarBuilders(
        markerBuilder: (context, date, events) {
          final progresses = _getProgressesForDay(date);
          if (progresses.isEmpty) return null;

          return Positioned(
            bottom: 1,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
            ),
          );
        },
        selectedBuilder: (context, date, _) {
          return Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            ),
            child: Center(
              child: Text(
                '${date.day}',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
        todayBuilder: (context, date, _) {
          return Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                '${date.day}',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
        // Disable dates outside the goal period
        disabledBuilder: (context, date, _) {
          return Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[100],
            ),
            child: Center(
              child: Text(
                '${date.day}',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          );
        },
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: true,
        titleCentered: true,
        formatButtonShowsNext: false,
        formatButtonDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
        ),
        formatButtonTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
