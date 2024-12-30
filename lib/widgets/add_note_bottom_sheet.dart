import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/widgets/custom_bottom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Contant',
              maxLines: 5,
            ),
            SizedBox(height: 32),
            CustomBottom(),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
