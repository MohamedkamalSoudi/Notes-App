// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        SizedBox(
          height: 50,
        ),
        Text(
          title,
          style:const  TextStyle(fontSize: 28),
        ),
        Spacer(),
        CostomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
