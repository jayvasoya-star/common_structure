import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

class CommonWidgets {
  final BuildContext context;
  CommonWidgets._(this.context);

  static PreferredSizeWidget customAppBar({
    required String title,
    Color? backgroundColor,
    TextStyle? textStyle,
    List<Widget>? actions,
    Widget? leading,
  }) {
    return AppBar(
      backgroundColor: backgroundColor ?? appColors.primary1Color,
      title:
          Text(title, style: textStyle ?? const TextStyle(color: Colors.white)),
      actions: actions,
      leading: leading,
    );
  }

  static Widget customButton({
    required String text,
    required VoidCallback onPressed,
    Color? color,
    EdgeInsetsGeometry? padding,
    double? elevation,
    TextStyle? textStyle,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? appColors.primary1Color,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        elevation: elevation ?? 2.0,
      ),
      onPressed: onPressed,
      child:
          Text(text, style: textStyle ?? const TextStyle(color: Colors.white)),
    );
  }

  static Widget customTextField({
    required TextEditingController controller,
    required String hintText,
    bool obscureText = false,
    TextStyle? textStyle,
    InputDecoration? decoration,
    TextInputType? keyboardType,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: textStyle,
      decoration: decoration ??
          InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: appColors.primary1Color),
            ),
          ),
    );
  }

  static Widget customSizedBox({double? height, double? width}) {
    return SizedBox(height: height, width: width);
  }

  static Widget customPadding({
    required Widget child,
    EdgeInsetsGeometry? padding,
  }) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: child,
    );
  }

  static Widget customImageBuilder({
    required String imagePath,
    ImageSourceType sourceType = ImageSourceType.network,
    double? height,
    double? width,
    BoxFit? fit,
    BorderRadius? borderRadius,
    BoxShadow? boxShadow,
  }) {
    Widget imageWidget;
    switch (sourceType) {
      case ImageSourceType.asset:
        imageWidget = Image.asset(
          imagePath,
          height: height,
          width: width,
          fit: fit ?? BoxFit.cover,
        );
        break;
      case ImageSourceType.file:
        imageWidget = Image.file(
          File(imagePath),
          height: height,
          width: width,
          fit: fit ?? BoxFit.cover,
        );
        break;
      case ImageSourceType.memory:
        imageWidget = Image.memory(
          Uint8List.fromList(imagePath.codeUnits),
          height: height,
          width: width,
          fit: fit ?? BoxFit.cover,
        );
        break;
      default:
        imageWidget = Image.network(
          imagePath,
          height: height,
          width: width,
          fit: fit ?? BoxFit.cover,
        );
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        boxShadow: boxShadow != null ? [boxShadow] : null,
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        child: imageWidget,
      ),
    );
  }
}

enum ImageSourceType {
  network,
  asset,
  file,
  memory,
}
