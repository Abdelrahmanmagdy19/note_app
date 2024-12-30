import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Fluuter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Build you career withe abdelrahman',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.7),
                  fontSize: 15,
                ),
              ),
            ),
            trailing: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              'May 30,12,2025',
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.7),
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
