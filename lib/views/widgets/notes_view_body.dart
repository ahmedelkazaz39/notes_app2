import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/custom_appbar.dart';

class NotesviewBody extends StatelessWidget {
  const NotesviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             CustomAppBar( 
             ),
          ],
        ),
      ),
    );
  }
}


