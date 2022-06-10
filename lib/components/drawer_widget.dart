import 'package:bmi_calculator/components/feedback_dialog.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../screens/about_developer.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green[100],
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            iconColor: kBottomContainerColor,
            textColor: kBottomContainerColor,
            tileColor: kActiveColor,
            title: const Text(
              'Settings',
            ),
            leading: const Icon(Icons.settings_applications_rounded),
            onTap: () {},
          ),
          ListTile(
            iconColor: kBottomContainerColor,
            textColor: kBottomContainerColor,
            tileColor: kActiveColor,
            title: const Text('Feedback'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const FeedbackDialog(),
              );
            },
            leading: const Icon(Icons.feedback),
          ),
          ListTile(
            iconColor: kBottomContainerColor,
            textColor: kBottomContainerColor,
            tileColor: kActiveColor,
            title: const Text('About developer'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutMe()),
              );
            },
            leading: const Icon(Icons.info_rounded),
          ),
          const SizedBox(
            height: 50,
          ),
          ListTile(
            title: const Text('Exit'),
            textColor: Colors.redAccent,
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(Icons.exit_to_app_rounded),
          ),
        ],
      ),
    );
  }
}
