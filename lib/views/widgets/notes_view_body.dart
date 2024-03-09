import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/custom_appbar.dart';
import 'package:todo_app/views/widgets/custom_note_item.dart';

class NotesviewBody extends StatelessWidget {
  const NotesviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Column(
            children: [
              CustomAppBar(),
              Expanded(child: NotesListView()),
            ],
          ),
        ),
      ),
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:  (context, index) {
        return const  Padding(
          padding:   EdgeInsets.only(bottom: 12),
          child:   NoteItem(),
        );
      },
    );
  }
}
