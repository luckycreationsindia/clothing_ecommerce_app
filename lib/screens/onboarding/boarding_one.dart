import 'package:clothing_ecommerce_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoardingOne extends StatelessWidget {
  const BoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: "1",
                    children: [
                      TextSpan(
                        text: "/3",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () => context.go(RouteConstants.homeRoutePath),
                  child: const Text("Skip"),
                )
              ],
            ),
            const SizedBox(height: 50),
            Image.asset("images/boarding_one.png"),
            const SizedBox(height: 50),
            const Text("Choose Product", style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            Text(
              "A product is the item offered for sale."
              "A product can be a service or an item."
              "It can be physical or in virtual or cyber form",
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () => context.go(RouteConstants.onboardingTwoRoutePath),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  "Next >",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
