import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          CustomAppBarItem(),
         Expanded(child: NoteItemListView()),
        ],
      ),
    );
  }
}

class NoteItemListView extends StatelessWidget {
  const NoteItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const NoteItem(),
    );
  }
}
