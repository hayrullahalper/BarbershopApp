import 'package:barbershopapp/components/custom_barber_search_list_tile.dart';
import 'package:barbershopapp/components/custom_input_field.dart';
import 'package:flutter/material.dart';

import '../../data/mock_data.dart';
import 'choose_barber_screen.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchQuery = "";

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
                CustomInputField(
                  labelText: "Enter Barbershop Name",
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                ),
                if (searchQuery.isNotEmpty)
                  Container(
                    height: 150,
                    width: 320,
                    child: ListView.builder(
                      itemCount: barbershops.length,
                      itemBuilder: (context, index) {
                        if (barbershops[index]
                            .name
                            .toLowerCase()
                            .contains(searchQuery.toLowerCase())) {
                          return CustomBarberSearchListTile(
                            text: barbershops[index].name,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChooseBarberScreen(
                                    barbershop: barbershops[index],
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
