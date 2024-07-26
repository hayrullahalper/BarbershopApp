import 'package:barbershopapp/components/custom_barber_search_list_tile.dart';
import 'package:barbershopapp/components/custom_input_field.dart';
import 'package:flutter/material.dart';

import '../../data/mock_data.dart';
import 'choose_barber_screen.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/barberpole.png',
                    height: 200,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  textAlign: TextAlign.left,
                  'Search a Barbershop',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
                CustomInputField(labelText: "Enter Barbershop Name"),
                Container(
                  height: 150,
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: ListView.builder(
                    itemCount: barbershops.length,
                    itemBuilder: (context, index) {
                      return CustomBarberSearchListTile(
                        text: barbershops[index].name,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChooseBarberScreen(
                                      barbershop: barbershops[index])));
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
