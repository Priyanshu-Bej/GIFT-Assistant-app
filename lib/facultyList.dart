import 'package:flutter/material.dart';

class FacultyListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> facultyData = [
    {
      'Sl.No.': '1',
      'Name': 'DR.RAVI NARAYAN PANDA (HOD)',
      'Qualification': 'PhD',
      'Area of Specialization': 'Channel Equalization',
      'Current Designation': 'Professor',
      'Joining Date': '02-08-2016',
      'Prof/Assoc. Prof. Date': '02-08-2016',
      'Currently Associated': 'Yes',
      'Nature of Association': 'Regular',
      'Contractual/Regular': '',
      'Leaving Date': '',
    },
    {
      'Sl.No.': '2',
      'Name': 'Dr. I.V. PRAKASH',
      'Qualification': 'PhD',
      'Area of Specialization': 'Electronics and Communication',
      'Current Designation': 'Professor',
      'Joining Date': '22-06-2019',
      'Prof/Assoc. Prof. Date': '22-06-2019',
      'Currently Associated': 'Yes',
      'Nature of Association': 'Regular',
      'Contractual/Regular': '',
      'Leaving Date': '',
    },
    // Add more faculty data here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty List'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Sl. No.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Qualification',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Area of Specialization',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Current Designation',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Joining Date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Prof/Assoc. Prof. Date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Currently Associated',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Nature of Association',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Contractual/Regular',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Leaving Date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: facultyData
                .map((faculty) => DataRow(
                      cells: faculty.keys
                          .map<DataCell>((key) => DataCell(
                                Text(faculty[key].toString()),
                              ))
                          .toList(),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
  
}
