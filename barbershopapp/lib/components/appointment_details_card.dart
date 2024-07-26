import 'package:barbershopapp/models/appointment.dart';
import 'package:flutter/material.dart';

class AppointmentDetailsCard extends StatelessWidget {
  final VoidCallback onPressed;
  final Appointment appointment;

  const AppointmentDetailsCard(
      {super.key, required this.onPressed, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 180,
        child: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Colors.black, width: 1.75),
          ),
          child: Center(
              child: Container(
            child: getChild(),
          )),
        ),
      ),
    );
  }

  Widget getChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                appointment.barbershopName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                appointment.barberName,
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 23),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                appointment.appointmentDate,
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 24),
              )
            ],
          )
        ],
      ),
    );
  }
}
