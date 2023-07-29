import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.menu),
        const Spacer(),
        const Text.rich(
          TextSpan(
            text: "",
            children: [
              WidgetSpan(
                child: Icon(
                  Icons.location_pin
                ),
              ),
              TextSpan(text: "15/2 New Texas")
            ],
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
