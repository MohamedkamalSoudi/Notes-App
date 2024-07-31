import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/constants.dart';

class EditNotColorsList extends StatefulWidget {
  const EditNotColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotColorsList> createState() => _EditNotColorsListState();
}

class _EditNotColorsListState extends State<EditNotColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = KColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: KColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = KColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: KColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
