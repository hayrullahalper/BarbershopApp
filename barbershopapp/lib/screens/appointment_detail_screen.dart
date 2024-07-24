import 'package:barbershopapp/components/appointment_detail_with_photo.dart';
import 'package:barbershopapp/components/custom_button.dart';
import 'package:flutter/material.dart';

import '../appointment.dart';

class AppointmentDetailScreen extends StatelessWidget {
  final Appointment appointment;

  const AppointmentDetailScreen({super.key, required this.appointment});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Appointment Details",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          AppointmentDetailWithPhoto(
            appointment: appointment,
          ),
          CustomButton(
            text: "Change Date",
            onPressed: () {},
          ),
          CustomButton(
            text: "Cancel Appointment",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
