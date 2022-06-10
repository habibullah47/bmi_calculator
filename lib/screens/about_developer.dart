import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('images/habib2.jpg'),
                  ),
                  const Text(
                    'Mohammed Habibullah',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue[100],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source San pr',
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 20,
                    child: Divider(
                      color: Colors.blue[100],
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: const Icon(
                        Icons.call_sharp,
                        color: Colors.lightBlue,
                      ),
                      title: Text(
                        '+88 01308-781439',
                        style: TextStyle(
                          color: Colors.lightBlue[700],
                          fontSize: 20,
                          fontFamily: 'Source San pr',
                        ),
                      ),
                      onTap: () => canLaunchUrl(
                        Uri(scheme: 'tel', path: '+8801308781439'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: const Icon(
                        Icons.mail_rounded,
                        color: Colors.lightBlue,
                      ),
                      title: Text(
                        'habib.world.121@gmail.com',
                        style: TextStyle(
                          color: Colors.lightBlue[700],
                          fontSize: 20,
                          fontFamily: 'Source San pr',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: const [Icon(Icons.arrow_back), Text('Back')],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
