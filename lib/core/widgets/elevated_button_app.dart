import 'package:flutter/material.dart';

import '../theming/colors.dart';

Widget elevatedButtonApp(BuildContext context,
    {void Function()? onPressed, String? text}) {
  return Align(
    alignment: Alignment.centerRight,
    child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text ?? 'verify',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              backgroundColor: MaterialStateProperty.all(ColorsManager.primary),
            )),
  );
}
