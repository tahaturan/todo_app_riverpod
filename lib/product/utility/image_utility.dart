import 'package:flutter/widgets.dart';

enum ImageUtility {
  profile,
}

extension ImageUtilityextension on ImageUtility {
  ImageProvider imageProvider(String value) {
    String imagePaht = 'assets/images/png/$value.png';
    return AssetImage(imagePaht);
  }
}
