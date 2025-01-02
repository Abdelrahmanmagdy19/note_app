import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ));
        },
        child: Container(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 10,
          ),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    note.supTitle,
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
                  note.date,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.7),
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
