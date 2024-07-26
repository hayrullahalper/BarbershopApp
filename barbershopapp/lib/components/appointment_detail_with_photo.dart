import 'package:barbershopapp/models/appointment.dart';
import 'package:flutter/material.dart';

class AppointmentDetailWithPhoto extends StatelessWidget {
  final Appointment appointment;

  const AppointmentDetailWithPhoto({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(color: Colors.black, width: 1.75),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              appointment.barbershopName,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26),
                            ),
                            Text(
                              appointment.barberName,
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 23),
                            ),
                            Text(
                              appointment.description,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                            )
                          ]),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/defaultbarber.png"),
                        radius: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Appointment Date / Time",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        appointment.appointmentDate,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
