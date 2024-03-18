// level_screen.dart

import 'package:flutter/material.dart';
import 'core/route/app_route_name.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to Coloring Book  ',
          style: TextStyle(
            color: Color.fromARGB(255, 60, 39, 161),
            fontSize: 36,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 0.04,
            letterSpacing: -0.96,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRouteName.drawingRoom);
              },
              child: Text('Level 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(AppRouteName.drawingRoom, arguments: {
                  'level': 2, // Indicate level 2
                });
              },
              child: Text('Level 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(AppRouteName.drawingRoom, arguments: {
                  'level': 3, // Indicate level 3
                });
              },
              child: Text('Level 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(AppRouteName.drawingRoom, arguments: {
                  'level': 4, // Indicate level 4
                });
              },
              child: Text('Level 4'),
            ),
          ],
        ),
      ),
    );
  }
}
