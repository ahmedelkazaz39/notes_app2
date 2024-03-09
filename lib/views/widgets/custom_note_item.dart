import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          
          ListTile(
            title: const Padding(
              padding:   EdgeInsets.only(bottom: 16),
              child:   Text(
                'Flutter Tips',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
            ),
            
            subtitle: Text(
              'Build Your Carerr with tharwat samy',
              style:
                  TextStyle(fontSize: 20, color: Colors.black.withOpacity(.6)),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Text(
              'Mar 6,2024',
              style: TextStyle(
                color: Colors.black.withOpacity(.6),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
