import 'package:barbershopapp/components/custom_button.dart';
import 'package:flutter/material.dart';

class AppointmentSchedulerScreen extends StatefulWidget {
  const AppointmentSchedulerScreen({super.key});

  @override
  _AppointmentSchedulerScreenState createState() =>
      _AppointmentSchedulerScreenState();
}

class _AppointmentSchedulerScreenState
    extends State<AppointmentSchedulerScreen> {
  int selectedDay = 0;
  String selectedHour = "";

  final List<String> hours = [
    '09:45',
    '10:30',
    '11:15',
    '12:00',
    '12:45',
    '13:15',
    '14:00',
    '15:15'
  ];

  int firstDayOfWeek = 3;

  int totalDaysInMonth = 31;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.left,
                  '  Mon   Tue    Wed   Thu     Fri     Sat    Sun',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  childAspectRatio: 1,
                ),
                itemCount: totalDaysInMonth + firstDayOfWeek,
                itemBuilder: (context, index) {
                  if (index < firstDayOfWeek) {
                    return Container();
                  } else {
                    int day = index - firstDayOfWeek + 1;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDay = day;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8),
                          color: selectedDay == day
                              ? Colors.grey[300]
                              : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            day.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: selectedDay == day
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              decoration: selectedDay == day
                                  ? TextDecoration.lineThrough
                                  : null,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 10),
            const Text(
              'Available Hours',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: hours.map((hour) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedHour = hour;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                      color: selectedHour == hour
                          ? Colors.grey[300]
                          : Colors.white,
                    ),
                    child: Text(
                      hour,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: selectedHour == hour
                            ? FontWeight.bold
                            : FontWeight.normal,
                        decoration: selectedHour == hour
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 30),
            CustomButton(text: "Complete", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
