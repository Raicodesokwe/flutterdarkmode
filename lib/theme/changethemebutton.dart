import 'package:darkmode/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, notifier, child) => Switch.adaptive(
        value: notifier.darkTheme,
        onChanged: (val) {
          notifier.toggleTheme();
          //bool value of switch which is true or false
        },
        activeTrackColor: Colors.green[100],
        inactiveTrackColor: Colors.green[300],
      ),
    );
  }
}
