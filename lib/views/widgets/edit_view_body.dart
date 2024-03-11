import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/custom_appbar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
     padding: EdgeInsets.only(top: 24, left: 24, right: 24),
      child:   SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit',
              icon: Icons.done,
            ),
          ],
        ),
      ),
    );
  }
}