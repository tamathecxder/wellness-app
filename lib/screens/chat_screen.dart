import 'package:flutter/material.dart';
import 'package:wellness_app/theme/style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/under_construction.png',
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "We're Preparing Something Great!",
          textAlign: TextAlign.center,
          style: CustomStyle.defaultTextStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
