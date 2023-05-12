import 'package:flutter/material.dart';
import 'package:ninja_core/m3_theme_core.dart';

class M3Divider extends StatelessWidget {
  final Axis axis;
  final Color color;
  final double thickness;
  final M3EdgeInsets m3EdgeInsets;

  const M3Divider({
    Key? key,
    this.axis = Axis.horizontal,
    this.color = Colors.transparent,
    this.thickness = 1.0,
    this.m3EdgeInsets = const M3EdgeInsets.none(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => M3Padding(
        padding: m3EdgeInsets,
        child: Divider(color: color, thickness: thickness),
      );
}
