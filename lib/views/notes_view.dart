import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:  () {
          showModalBottomSheet(context: context, builder: (context){
            return const AddNoteBottomSheet() ;
          });
        },
        child: const Icon(Icons.add,size: 26,),
        ),
      body:const NotesviewBody(), 
    );
  }
}



class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container();
  }
}
