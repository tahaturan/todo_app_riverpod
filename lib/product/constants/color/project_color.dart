import 'package:flutter/material.dart';

enum ProjectColor {
  scaffoldBackgroundColor,
  blueDam,
  sumptuousPurble,
  karmaChameleon,
}

extension ProjectColorextension on ProjectColor {
  Color color() {
    switch (this) {
      case ProjectColor.scaffoldBackgroundColor:
        return const Color(0XFF3F3B6C);
      case ProjectColor.blueDam:
        return const Color(0XFFA3C7D6);
      case ProjectColor.sumptuousPurble:
        return const Color(0XFF624F82);
      case ProjectColor.karmaChameleon:
        return const Color(0XFF9F73AB);
    }
  }
}
