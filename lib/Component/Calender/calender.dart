import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderComponent extends StatefulWidget {
  const CalenderComponent({super.key});

  @override
  _CalenderComponentState createState() => _CalenderComponentState();
}

class _CalenderComponentState extends State<CalenderComponent> {
  late Map<DateTime, List<String>> _events;
  late List<String> _selectedEvents;
  late DateTime _selectedDay;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _events = {
      DateTime.utc(2024, 10, 25): ['Event 1', 'Event 2'],
      DateTime.utc(2024, 10, 26): ['Event 3'],
      DateTime.utc(2024, 10, 27): ['Event 4', 'Event 5', 'Event 6'],
    };
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
    _selectedEvents = _events[_selectedDay] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay; // update `_focusedDay` here as well
      _selectedEvents = _events[selectedDay] ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Add This DependencyTable Calender (table_calendar: ^3.1.2)
            TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: _onDaySelected,
              eventLoader: (day) => _events[day] ?? [],
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: _selectedEvents.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(_selectedEvents[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
