import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/custom_appbar.dart';
 import 'package:todo_app/views/widgets/notes_list_view.dart';

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
              CustomAppBar(
                icon:Icons.search ,
                title: 'Notes',
              ),
              Expanded(child: NotesListView()),
            ],
          ),
        ),
      ),
    );
  }
}


