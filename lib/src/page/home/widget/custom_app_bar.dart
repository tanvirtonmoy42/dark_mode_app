import 'package:dark_mode_app/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.settingsController})
      : super(key: key);
  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.secondary,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 30,
                ),
                hintText: 'search books here..',
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                )),
          )),
          IconButton(
              onPressed: () {
                settingsController.updateThemeMode(
                    settingsController.themeMode == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light);
              },
              icon: Icon(settingsController.themeMode == ThemeMode.light
                  ? Icons.dark_mode_rounded
                  : Icons.light_mode_rounded))
        ],
      ),
    );
  }
}
