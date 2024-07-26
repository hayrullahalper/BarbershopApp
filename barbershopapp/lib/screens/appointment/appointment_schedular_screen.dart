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

  final List<String> days =
      List.generate(31, (index) => (index + 1).toString());
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            SizedBox(height: 10),
            Center(
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
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDay = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                        color: selectedDay == index
                            ? Colors.grey[300]
                            : Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          days[index],
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: selectedDay == index
                                ? FontWeight.bold
                                : FontWeight.normal,
                            decoration: selectedDay == index
                                ? TextDecoration.lineThrough
                                : null,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Text(
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
            CustomButton(
              text: "Complete",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
