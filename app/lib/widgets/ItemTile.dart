import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String title;
  final DateTime dateTime;

  const ItemTile({super.key, required this.title, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  dateTime.day.toString() +
                      "." +
                      dateTime.month.toString() +
                      "." +
                      dateTime.year.toString() +
                      " " +
                      dateTime.hour.toString() +
                      ":" +
                      dateTime.minute.toString(),
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(width: 16),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.black),
              onPressed: () {
                // Hier kann eine Funktion zum Löschen eingefügt werden
              },
            ),
          ],
        ),
      ),
    );
  }
}
