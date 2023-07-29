import 'package:clothing_ecommerce_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoardingThree extends StatelessWidget {
  const BoardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            const Row(children: [Text("3/3")]),
            const SizedBox(height: 50),
            Image.asset("images/boarding_three.png"),
            const SizedBox(height: 50),
            const Text("Get Your Order", style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            Text(
              "Business or commerce an order is a stated intention either spoken to engage in a commercial transaction specific products",
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () => context.go(RouteConstants.loginRoutePath),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text.rich(
                  TextSpan(text: "Get Started ", children: [
                    TextSpan(
                      text: ">>",
                      style: TextStyle(color: Colors.white.withOpacity(0.5)),
                    ),
                    const TextSpan(text: ">"),
                  ]),
                  style: const TextStyle(fontSize: 22),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
