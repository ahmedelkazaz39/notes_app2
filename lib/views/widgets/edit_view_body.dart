import 'package:flutter/material.dart';
import 'package:notes_app2/views/widgets/custom_appbar.dart';
import 'package:notes_app2/views/widgets/custom_text_field.dart';
  
class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit',
              icon: Icons.done,
            ),
             SizedBox(
              height: 32,
            ),
            CustomTextField(hint: 'Title'),
             SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxline: 5,
            ),
          ],
        ),
      ),
    );
  }
}
