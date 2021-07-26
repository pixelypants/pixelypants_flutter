import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import '../widgets/pixely_topic_card.dart';
import 'package:pixelypants_flutter/themes/pixely_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      print('Change Theme State :: home');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      // padding: EdgeInsets.all(2),
      color: PixelyTheme.gridBackground,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PixelyTopicCard(
              emojiText: '😅',
              titleText: 'Funny',
              subTitleText: '+42 articles',
            ),
          ),
          // Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PixelyTopicCard(
              emojiText: '🏀',
              titleText: 'Sport',
              subTitleText: '+61 articles',
            ),
          ),
          // Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PixelyTopicCard(
              emojiText: '👕',
              titleText: 'Fashion',
              subTitleText: '+54 articles',
            ),
          )
        ],
      ),
    );
  }
}
