import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey.shade300,
                endIndent: 10,
              ),
            ),
            Text(
              "أو من خلال",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
            ),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey.shade300,
                indent: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
