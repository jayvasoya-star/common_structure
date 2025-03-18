import 'package:flutter/material.dart';

class AppColors {
  AppColors() : super() {
    loadColor(true);
  }

  final Color _primaryColor = const Color(0xFF6200EE);
  final Color _secondaryColor = const Color(0xFF03DAC6);
  final Color _neutralColor = const Color(0xFF000000);
  final Color _backgroundColor = const Color(0xFFF5F5F5);
  final Color _whiteColor = const Color(0xFFF5F5F5);
  final Color _transparentColor = Colors.transparent;
  final Color _greyColor = const Color(0xFF9E9E9E);
  final Color _redColor = const Color(0xFFE53935);
  final Color _greenColor = const Color(0xFF43A047);
  final Color _blueColor = const Color(0xFF1E88E5);

  late Color primary1Color;
  late Color primary2Color;
  late Color primary3Color;
  late Color primary4Color;
  late Color primary5Color;
  late Color primary6Color;
  late Color secondary1Color;
  late Color secondary2Color;
  late Color secondary3Color;
  late Color secondary4Color;
  late Color secondary5Color;
  late Color secondary6Color;
  late Color grey1Color;
  late Color grey2Color;
  late Color grey3Color;
  late Color grey4Color;
  late Color grey5Color;
  late Color grey6Color;

  late Color neutral1Color;
  late Color neutral2Color;
  late Color neutral3Color;
  late Color neutral4Color;
  late Color neutral5Color;
  late Color neutral6Color;

  late Color background1Color;
  late Color background2Color;
  late Color red1Color;
  late Color red2Color;
  late Color green1Color;
  late Color green2Color;
  late Color blue1Color;
  late Color blue2Color;
  late Color transparentColor;
  late Color white1Color;
  late Color white2Color;
  late Color white3Color;
  late Color white4Color;
  late Color white5Color;
  late Color white6Color;

  void loadColor(bool color) {
    if (color) {
      lightTheme();
    } else {
      darkTheme();
    }
  }

  void lightTheme() {
    primary1Color = _primaryColor;
    primary2Color = _primaryColor.withAlpha((0.9 * 255).toInt());
    primary3Color = _primaryColor.withAlpha((0.8 * 255).toInt());
    primary4Color = _primaryColor.withAlpha((0.7 * 255).toInt());
    primary5Color = _primaryColor.withAlpha((0.6 * 255).toInt());
    primary6Color = _primaryColor.withAlpha((0.5 * 255).toInt());

    secondary1Color = _secondaryColor;
    secondary2Color = _secondaryColor.withAlpha((0.9 * 255).toInt());
    secondary3Color = _secondaryColor.withAlpha((0.8 * 255).toInt());
    secondary4Color = _secondaryColor.withAlpha((0.7 * 255).toInt());
    secondary5Color = _secondaryColor.withAlpha((0.6 * 255).toInt());
    secondary6Color = _secondaryColor.withAlpha((0.5 * 255).toInt());

    grey1Color = _greyColor;
    grey2Color = _greyColor.withAlpha((0.9 * 255).toInt());
    grey3Color = _greyColor.withAlpha((0.8 * 255).toInt());
    grey4Color = _greyColor.withAlpha((0.7 * 255).toInt());
    grey5Color = _greyColor.withAlpha((0.6 * 255).toInt());
    grey6Color = _greyColor.withAlpha((0.5 * 255).toInt());

    neutral1Color = _neutralColor;
    neutral2Color = _neutralColor.withAlpha((0.9 * 255).toInt());
    neutral3Color = _neutralColor.withAlpha((0.8 * 255).toInt());
    neutral4Color = _neutralColor.withAlpha((0.7 * 255).toInt());
    neutral5Color = _neutralColor.withAlpha((0.6 * 255).toInt());
    neutral6Color = _neutralColor.withAlpha((0.5 * 255).toInt());

    white1Color = _whiteColor;
    white2Color = _whiteColor.withAlpha((0.9 * 255).toInt());
    white3Color = _whiteColor.withAlpha((0.8 * 255).toInt());
    white4Color = _whiteColor.withAlpha((0.7 * 255).toInt());
    white5Color = _whiteColor.withAlpha((0.6 * 255).toInt());
    white6Color = _whiteColor.withAlpha((0.5 * 255).toInt());

    background1Color = _backgroundColor;
    background2Color = Colors.white;

    red1Color = _redColor;
    red2Color = _redColor.withAlpha((0.8 * 255).toInt());

    green1Color = _greenColor;
    green2Color = _greenColor.withAlpha((0.8 * 255).toInt());

    blue1Color = _blueColor;
    blue2Color = _blueColor.withAlpha((0.8 * 255).toInt());

    transparentColor = _transparentColor;
  }

  void darkTheme() {
    primary1Color = _secondaryColor;
    primary2Color = _secondaryColor.withAlpha((0.9 * 255).toInt());
    primary3Color = _secondaryColor.withAlpha((0.8 * 255).toInt());
    primary4Color = _secondaryColor.withAlpha((0.7 * 255).toInt());
    primary5Color = _secondaryColor.withAlpha((0.6 * 255).toInt());
    primary6Color = _secondaryColor.withAlpha((0.5 * 255).toInt());

    secondary1Color = _primaryColor;
    secondary2Color = _primaryColor.withAlpha((0.9 * 255).toInt());
    secondary3Color = _primaryColor.withAlpha((0.8 * 255).toInt());
    secondary4Color = _primaryColor.withAlpha((0.7 * 255).toInt());
    secondary5Color = _primaryColor.withAlpha((0.6 * 255).toInt());
    secondary6Color = _primaryColor.withAlpha((0.5 * 255).toInt());

    grey1Color = _greyColor.withAlpha((0.8 * 255).toInt());
    grey2Color = _greyColor.withAlpha((0.7 * 255).toInt());
    grey3Color = _greyColor.withAlpha((0.6 * 255).toInt());
    grey4Color = _greyColor.withAlpha((0.5 * 255).toInt());
    grey5Color = _greyColor.withAlpha((0.4 * 255).toInt());
    grey6Color = _greyColor.withAlpha((0.3 * 255).toInt());

    neutral1Color = Colors.white;
    neutral2Color = Colors.white.withAlpha((0.9 * 255).toInt());
    neutral3Color = Colors.white.withAlpha((0.8 * 255).toInt());
    neutral4Color = Colors.white.withAlpha((0.7 * 255).toInt());
    neutral5Color = Colors.white.withAlpha((0.6 * 255).toInt());
    neutral6Color = Colors.white.withAlpha((0.5 * 255).toInt());

    white1Color = _whiteColor;
    white2Color = _whiteColor.withAlpha((0.9 * 255).toInt());
    white3Color = _whiteColor.withAlpha((0.8 * 255).toInt());
    white4Color = _whiteColor.withAlpha((0.7 * 255).toInt());
    white5Color = _whiteColor.withAlpha((0.6 * 255).toInt());
    white6Color = _whiteColor.withAlpha((0.5 * 255).toInt());

    background1Color = Colors.black;
    background2Color = Colors.grey[900]!;

    red1Color = _redColor.withAlpha((0.9 * 255).toInt());
    red2Color = _redColor.withAlpha((0.7 * 255).toInt());

    green1Color = _greenColor.withAlpha((0.9 * 255).toInt());
    green2Color = _greenColor.withAlpha((0.7 * 255).toInt());

    blue1Color = _blueColor.withAlpha((0.9 * 255).toInt());
    blue2Color = _blueColor.withAlpha((0.7 * 255).toInt());

    transparentColor = _transparentColor;
  }
}
