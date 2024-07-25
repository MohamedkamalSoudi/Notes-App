import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_view.dart';

class NiteItem extends StatelessWidget {
  const NiteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        },),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 16),
                child: Text(
                  "Build your Career with Mohamed Kamal",
                  style: TextStyle(
                      color: Color.fromARGB(255, 138, 130, 130), fontSize: 16),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                'May21 , 2024',
                style: TextStyle(color: Color.fromARGB(255, 138, 130, 130)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
