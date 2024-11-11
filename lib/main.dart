import 'package:flutter/material.dart';
import 'package:practice_themes/colors/base_color_scheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<BaseColorSchemeEnum> colors = [
    BaseColorSchemeEnum.pink,
    BaseColorSchemeEnum.blue,
    BaseColorSchemeEnum.yellow
  ];
  BaseColorSchemeEnum baseColorSchemeEnum = BaseColorSchemeEnum.pink;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Themes practice',
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colors.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            baseColorSchemeEnum = colors[index];
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: baseColorMap[colors[index]]?.circleAvatarColor,
                        ),
                      ),
                    );
                  }),
            ),
            Text(
              'Paloma\'s text',
              style: TextStyle(
                color: baseColorMap[baseColorSchemeEnum]?.textColor,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: baseColorMap[baseColorSchemeEnum]?.containerColor,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: baseColorMap[baseColorSchemeEnum]?.buttonColor,
              ),
              child: const Text('Paloma\'s button'),
            ),
          ],
        ),
      ),
    );
  }
}
