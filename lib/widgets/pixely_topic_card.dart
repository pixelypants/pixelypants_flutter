import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:pixelypants_flutter/themes/pixely_theme.dart';

class PixelyTopicCard extends StatefulWidget {
  final String emojiText;
  final String titleText;
  final String subTitleText;

  @override
  _PixelyTopicCardState createState() => _PixelyTopicCardState();

  PixelyTopicCard(
      {required this.emojiText,
      required this.subTitleText,
      required this.titleText});
}

class _PixelyTopicCardState extends State<PixelyTopicCard> {
  @override
  void initState() {
    super.initState();
    bootstrapGridParameters(
      gutterSize: 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 220,
      width: 180,
      child: BootstrapContainer(
        fluid: true,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: BootstrapContainer(
              fluid: false,
              padding: const EdgeInsets.all(0),
              children: <Widget>[
                BootstrapRow(
                  children: <BootstrapCol>[
                    BootstrapCol(
                      sizes: 'col-12',
                      child: Container(
                        color: PixelyTheme.gridBackground,
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            child: Text(widget.emojiText,
                                style: Theme.of(context).textTheme.headline1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 20),
                BootstrapRow(
                  children: <BootstrapCol>[
                    BootstrapCol(
                      sizes: 'col-12',
                      child: Container(
                        color: PixelyTheme.gridBackground,
                        child: Center(
                          child: Text(widget.titleText,
                              style: Theme.of(context).textTheme.headline2),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 10),
                BootstrapRow(
                  children: <BootstrapCol>[
                    BootstrapCol(
                      sizes: 'col-12',
                      child: Container(
                        color: PixelyTheme.gridBackground,
                        child: Center(
                          child: Text(widget.subTitleText,
                              style: Theme.of(context).textTheme.bodyText1),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
