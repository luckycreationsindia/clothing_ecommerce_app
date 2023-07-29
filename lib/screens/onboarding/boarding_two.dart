import 'package:clothing_ecommerce_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoardingTwo extends StatelessWidget {
  const BoardingTwo({super.key});

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
                    text: "2",
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
            Image.asset("images/boarding_two.png"),
            const SizedBox(height: 50),
            const Text("Make Payment", style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            Text(
              "Payment is the transfer of money services in exchange product or Payments typically made terms agreed",
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () => context.go(RouteConstants.onboardingThreeRoutePath),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text.rich(
                  TextSpan(text: "Next ", children: [
                    TextSpan(
                      text: ">",
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
