import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:firebase_database/firebase_database.dart';

class TransportationPage extends StatefulWidget {
  @override
  State<TransportationPage> createState() => _TransportationPageState();
}

class _TransportationPageState extends State<TransportationPage> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> localTransportList = [
      {
        'name': 'Person 1',
        'vehicleType': 'Car',
        'contactNumber': '123-456-7890',
      },
      {
        'name': 'Person 2',
        'vehicleType': 'auto',
        'contactNumber': '987-654-3210',
      },
      {
        'name': 'Person 3',
        'vehicleType': 'auto',
        'contactNumber': '987852845845',
      },
      {
        'name': 'Person 4',
        'vehicleType': 'auto',
        'contactNumber': '987852845845',
      },
      {
        'name': 'Person 5',
        'vehicleType': 'auto',
        'contactNumber': '987852845845',
      },
    ];
    // final DatabaseReference _databaseRef =
    //     FirebaseDatabase.instance.ref().child('users');

    // List<Map<String, dynamic>> localTransportList = [];

    // @override
    // void initState() {
    //   super.initState();
    //   fetchLocalTransportData();
    // }

    // void fetchLocalTransportData() {
    //   _databaseRef.once().then((Event event) {
    //     DataSnapshot snapshot = event.snapshot;
    //     if (snapshot.value != null) {
    //       Map<dynamic, dynamic>? data = snapshot.value as Map?;
    //       data!.forEach((key, value) {
    //         setState(() {
    //           localTransportList.add(value);
    //         });
    //       });
    //     }
    //   }).catchError((error) {
    //     print('Error: $error');
    //   });
    // }
    final databaseReference = FirebaseDatabase.instance.ref();
    void readData() {
      databaseReference.once().then((DataSnapshot snapshot) {
            print('Data : ${snapshot.value}');
          } as FutureOr Function(DatabaseEvent value));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Transportation'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Local Transport',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.directions_car),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: localTransportList.length,
            itemBuilder: (context, index) {
              final person = localTransportList[index];
              return ListTile(
                title: Text(person['name'] ?? ''),
                subtitle: Text('Vehicle Type: ${person['vehicleType'] ?? ''}'),
                trailing: InkWell(
                  onTap: () {
                    launchUrlString('tel:${person['contactNumber']}');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(person['contactNumber'] ?? ''),
                      IconButton(
                        icon: Icon(Icons.phone),
                        onPressed: () {
                          launchUrlString('tel:${person['contactNumber']}');
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'College Bus Transport',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.directions_bus),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                buildBusRouteExpansionTile(
                  'Bus 1',
                  'Rasulgarh, Kalpana, AG, Governer House, Gopabandhu chaka, OUAT, Firestation, N.H. to College',
                ),
                buildBusRouteExpansionTile(
                  'Bus 2',
                  'CRP, Rental, Jagannath Vihar, Rajadhani College, Dumduma, Hig-108, N.H. to College',
                ),
                buildBusRouteExpansionTile(
                  'Bus 3',
                  'Lingaraj Mandir, Garaze chaka, Tankapani, Rabitakeis, Mausima Mandir Forest park, Pokhri put, khandagri, N.H. to college',
                ),
                buildBusRouteExpansionTile(
                  'Bus 4',
                  'KIIT Chhak, Patia, Damana, Niladri Vihar, Sailashree Vihar, Damana, Jayadev Vihar, Power house, DAV, CRP, NH to College',
                ),
                buildBusRouteExpansionTile(
                  'Bus 5',
                  'VSS Nagar, Vani Vihar, Ram Mandir, Master Canteen, PMG, Acharya Vihar, ISKCON, N.H. To College',
                ),
                buildBusRouteExpansionTile(
                  'Bus 6',
                  'Delta Square, N.H. To College',
                ),
                buildBusRouteExpansionTile(
                  'Bus 7',
                  'Kalinga Nagar, N.H. To College',
                ),
                buildBusRouteExpansionTile(
                  'Bus 8',
                  'Cutack Badambadi, N.H. To College',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBusRouteExpansionTile(String busNumber, String route) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ExpansionTile(
        title: Text(
          busNumber,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              route,
              style: TextStyle(
                fontSize: 17,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
        trailing: Icon(Icons.keyboard_arrow_down),
      ),
    );
  }
}
