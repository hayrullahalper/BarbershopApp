import 'package:flutter/material.dart';

import '../../components/appointment_details_card.dart';
import '../../data/mock_data.dart';
import 'appointment_detail_screen.dart';

class PreviousAppointmentsScreen extends StatelessWidget {
  const PreviousAppointmentsScreen({super.key});

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
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Previous Appointments",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
