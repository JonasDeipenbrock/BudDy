import 'package:flutter/material.dart';

class ChooseGameMenu extends StatefulWidget {
  @override
  _ChooseGameMenuState createState() => _ChooseGameMenuState();
}

class _ChooseGameMenuState extends State<ChooseGameMenu> {
  @override
  Widget build(BuildContext context) {
    return FadingListView();
  }
}

//currently no back button, needs to be implemented at top of screen

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
                Colors.transparent
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
