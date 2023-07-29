import 'package:flutter/material.dart';

class CategoryStory extends StatelessWidget {
  final Widget image;
  final String text;
  final bool selected;
  final Function()? onTap;

  const CategoryStory({
    super.key,
    required this.image,
    required this.text,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selected ? null : onTap,
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: selected
                ? Border.all(color: Colors.transparent)
                : Border.all(color: Colors.black45)),
        child: Column(
          children: [
            image,
            Text(
              text,
              style: TextStyle(
                color: selected ? Colors.black : Colors.black54,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
