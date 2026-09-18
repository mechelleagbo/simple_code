import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Members List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MembersScreen(),
    );
  }
}

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  // Sample list of member names
  final List<String> members = const ['Mechelle Salvo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Members'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  members[index][0],
                ), // Display first letter as avatar
              ),
              title: Text(
                members[index],
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Member #${index + 1}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Action when a member item is clicked
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Clicked on ${members[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
