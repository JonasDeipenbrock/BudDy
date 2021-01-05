import 'package:flutter/material.dart';

class ChooseGameMenu extends StatefulWidget {
  @override
  _ChooseGameMenuState createState() => _ChooseGameMenuState();
}

class _ChooseGameMenuState extends State<ChooseGameMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //body: FadingListView(),
      body: AltFadingView(),
    );
  }
}

//currently no back button, needs to be implemented at top of screen

class BackAppBar extends AppBar {}

class AltFadingView extends StatefulWidget {
  @override
  _AltFadingViewState createState() => _AltFadingViewState();
}

class _AltFadingViewState extends State<AltFadingView> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        padding: EdgeInsets.only(left: 25.0, right: 100.0),
        child: PageView.builder(
          itemCount: 100,
          scrollDirection: Axis.vertical,
          controller: PageController(viewportFraction: 0.7),
          onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, i) {
            return Transform.scale(
              scale: i == _index ? 1 : 0.9,
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Card ${i + 1}",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// Custom List View that fades out and only displays the current card
class FadingListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding:
            EdgeInsets.only(left: 50.0, right: 100.0, top: 25.0, bottom: 25.0),
        child: ShaderMask(
          shaderCallback: (Rect rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple,
                Colors.transparent,
                Colors.transparent,
                Colors.purple,
              ],
              stops: [0.0, 0.1, 0.9, 1.0],
            ).createShader(rect);
          },
          blendMode: BlendMode.dstOut,
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 200,
                child: Card(
                  color: Colors.orangeAccent,
                  child: ListTile(
                    title: Text('text text text'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
