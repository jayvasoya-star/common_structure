import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on num {
  SizedBox get heightBox => SizedBox(height: h);
  SizedBox get widthBox => SizedBox(width: w);
}
