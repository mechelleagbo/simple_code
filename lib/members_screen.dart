import 'package:flutter/material.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  // List of team members
  final List<String> members = const [
    'Mechelle Salvo',
    'Nikki Silvano',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Members'),
        backgroundColor: const Color(0xFFF8BBD0),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 6,
            ),
            color: const Color(0xFFFCE4EC),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xFFF8BBD0),
                child: Text(
                  members[index][0],
                ),
              ),
              title: Text(
                members[index],
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                'Member #${index + 1}',
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Clicked on ${members[index]}',
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}