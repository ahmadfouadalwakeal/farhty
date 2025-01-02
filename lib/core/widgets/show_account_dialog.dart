import 'package:flutter/material.dart';

String selectedOption = '';

Future<void> showAccountDialog(BuildContext context,
    {String? type1, String? type2, String? type3}) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                type1 ?? '',
                textAlign: TextAlign.right,
              ),
              onTap: () {
                Navigator.of(context).pop();
                selectedOption = 'حساب مشهور على منصات السوشيل مديا';
              },
            ),
            ListTile(
              title: Text(
                type2 ?? '',
                textAlign: TextAlign.right,
              ),
              onTap: () {
                Navigator.of(context).pop();
                selectedOption = 'حساب صاحب متجر الكتروني';
              },
            ),
            ListTile(
              title: Text(
                type3 ?? '',
                textAlign: TextAlign.right,
              ),
              onTap: () {
                Navigator.of(context).pop();
                selectedOption = 'حساب متابع';
              },
            ),
          ],
        ),
      );
    },
  );
}
