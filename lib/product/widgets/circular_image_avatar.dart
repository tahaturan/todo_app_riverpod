import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/product/utility/image_utility.dart';

class CircleImageAvatar extends StatelessWidget {
  const CircleImageAvatar({
    Key? key,
    required this.imagePath,
    this.height = 60,
    this.width = 60,
  }) : super(key: key);

  final String imagePath;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircleAvatar(
        backgroundImage: ImageUtility.profile.imageProvider(imagePath),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
