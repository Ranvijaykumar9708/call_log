import 'package:flutter/material.dart';

void main() {
  runApp(CallLog());
}

class CallLog extends StatelessWidget {
  CallLog({super.key});

  final List<Map<String, String>> people = [
    {
      'name': 'Aarya',
      'subtitle': 'Engineer',
      'mobile': '123-456-7890',
      'date': '01/01/2023'
    },
    {
      'name': 'vikki',
      'subtitle': 'Designer',
      'mobile': '234-567-8901',
      'date': '02/15/2023'
    },
    {
      'name': 'Rama',
      'subtitle': 'Doctor',
      'mobile': '345-678-9012',
      'date': '03/10/2023'
    },
    {
      'name': 'Raha',
      'subtitle': 'Artist',
      'mobile': '456-789-0123',
      'date': '04/25/2023'
    },
    {
      'name': 'Vasu',
      'subtitle': 'Chef',
      'mobile': '567-890-1234',
      'date': '05/18/2023'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Center(
            child: Text(
              'Call Log',
              style: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.blue,
                size: 40.0,
              ),
              title: Text(
                people[index]['name']!,
                style:
                    const TextStyle(color: Color.fromARGB(255, 16, 139, 201)),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '${people[index]['subtitle']} - ${people[index]['mobile']}'),
                  Text('Date: ${people[index]['date']}',
                      style: const TextStyle(color: Colors.grey)),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.call, color: Colors.green),
                onPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
