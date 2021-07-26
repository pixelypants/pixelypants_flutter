import 'package:flutter/material.dart';
import 'themes/pixely_theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(PixelyApp());
}

class PixelyApp extends StatefulWidget {
  @override
  _PixelyAppState createState() => _PixelyAppState();
}

class _PixelyAppState extends State<PixelyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      print('Change Theme State :: main');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: PixelyTheme.lightTheme,
      darkTheme: PixelyTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('pixelypants'),
            backgroundColor: Color(0xFF151529),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.brightness_4_rounded),
                onPressed: () {
                  currentTheme.toggleTheme();
                },
              ),
            ],
          ),
          body: PixelyPageView()),
    );
  }
}

class PixelyPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const <Widget>[
        Center(
          child: HomeScreen(),
        ),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        )
      ],
    );
  }
}
