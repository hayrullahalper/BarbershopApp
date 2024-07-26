import 'package:barbershopapp/components/appointment_details_card.dart';
import 'package:barbershopapp/data/mock_data.dart';
import 'package:barbershopapp/screens/appointment/appointment_detail_screen.dart';
import 'package:flutter/material.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

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
        padding: EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Appointments",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: appointments.length,
                itemBuilder: (context, index) {
                  return AppointmentDetailsCard(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppointmentDetailScreen(
                                  appointment: appointments[index])));
                    },
                    appointment: appointments[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
