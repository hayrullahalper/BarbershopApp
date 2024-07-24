import 'package:barbershopapp/Barber.dart';
import 'package:flutter/material.dart';

class BarberDetailsCard extends StatelessWidget {
  final VoidCallback onPressed;
  final Barber barber;

  const BarberDetailsCard(
      {super.key, required this.onPressed, required this.barber});

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
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset("assets/images/defaultbarber.png"),
            radius: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Container(
                width: 200,
                child: Text(
                  barber.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 200,
                child: Text(
                  barber.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )
        ],
      ),
      // child: Column(
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Text(
      //           barber.name,
      //           style:
      //               const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      //         )
      //       ],
      //     ),
      //     const SizedBox(
      //       height: 5,
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Text(
      //           appointment.barberName,
      //           style: const TextStyle(
      //               fontWeight: FontWeight.normal, fontSize: 23),
      //         )
      //       ],
      //     ),
      //     SizedBox(
      //       height: 30,
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(
      //           appointment.appointmentDate,
      //           style: TextStyle(fontWeight: FontWeight.w100, fontSize: 24),
      //         )
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
