import 'package:example/src/screens/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:ninja_core/m3_theme_core.dart';

class IconButtonScreen extends StatefulWidget {
  const IconButtonScreen({Key? key}) : super(key: key);

  @override
  State<IconButtonScreen> createState() => _IconButtonScreenState();
}

class _IconButtonScreenState extends State<IconButtonScreen> {
  bool isEnable = true;

  onChangeEnable() => setState(() => isEnable = !isEnable);

  @override
  Widget build(BuildContext context) {
    final Function()? onPressed = isEnable ? () {} : null;
    return Scaffold(
      appBar: const CustomAppBar(title: 'M3 IconButton'),
      body: M3Padding.medium(
        child: M3Card(
          child: M3Padding.medium(
            child: ListView(
              shrinkWrap: true,
              children: [
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Row(
                      children: [
                        M3IconButton(
                            icon: Icons.settings, onPressed: onPressed),
                        M3Padding(
                          padding: const M3EdgeInsets.symmetric(
                              horizontal: M3Spacing.medium),
                          child: M3Text.titleSmall(
                              text: 'IconButton (normal)',
                              color: isEnable ? Colors.red : null),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        M3IconButton.filled(
                            icon: Icons.settings, onPressed: onPressed),
                        M3Padding(
                            padding: const M3EdgeInsets.symmetric(
                                horizontal: M3Spacing.medium),
                            child: M3Text.titleSmall(
                                text: 'IconButton (filled)',
                                color: isEnable ? Colors.red : null)),
                      ],
                    ),
                    Row(
                      children: [
                        M3IconButton.filledTonal(
                            icon: Icons.settings, onPressed: onPressed),
                        M3Padding(
                            padding: const M3EdgeInsets.symmetric(
                                horizontal: M3Spacing.medium),
                            child: M3Text.titleSmall(
                                text: 'IconButton (filledTonal)',
                                color: isEnable ? Colors.red : null)),
                      ],
                    ),
                    Row(
                      children: [
                        M3IconButton.outlined(
                            icon: Icons.settings, onPressed: onPressed),
                        M3Padding(
                            padding: const M3EdgeInsets.symmetric(
                                horizontal: M3Spacing.medium),
                            child: M3Text.titleSmall(
                                text: 'IconButton (outlined)',
                                color: isEnable ? Colors.red : null)),
                      ],
                    ),
                    Row(
                      children: [
                        M3IconButton.filledTertiary(
                            icon: Icons.settings, onPressed: onPressed),
                        M3Padding(
                          padding: const M3EdgeInsets.symmetric(
                              horizontal: M3Spacing.medium),
                          child: M3Text.titleSmall(
                            text: 'IconButton (filledTertiary)',
                            color: isEnable ? Colors.red : null,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const M3Space.medium(),
                M3Button.outline(
                  onPressed: onChangeEnable,
                  child: Text(isEnable ? 'Disable' : 'Enable'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
