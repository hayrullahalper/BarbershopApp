import 'package:barbershopapp/components/barber_details_card.dart';
import 'package:barbershopapp/screens/appointment/appointment_schedular_screen.dart';
import 'package:flutter/material.dart';

import '../../data/mock_data.dart';
import '../../models/barbershop.dart';

class ChooseBarberScreen extends StatelessWidget {
  final Barbershop barbershop;

  const ChooseBarberScreen({super.key, required this.barbershop});

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
                alignment: Alignment.center,
                child: Text(
                  "Choose Barber",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: barbers.length,
                itemBuilder: (context, index) {
                  return BarberDetailsCard(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AppointmentSchedulerScreen()));
                    },
                    barber: barbers[index],
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
