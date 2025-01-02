import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.grey.shade300,
          child: const Icon(
            Icons.person,
            size: 70,
            color: Colors.grey,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: ColorsManager.mainDarkPurple,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.camera_alt_outlined,
                color: ColorsManager.mainWhite,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
