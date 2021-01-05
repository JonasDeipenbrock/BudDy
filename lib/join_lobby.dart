import 'package:BudDy/mainMenu.dart';
import 'package:flutter/material.dart';

class JoinLobbyPage extends StatefulWidget {
  @override
  _JoinLobbyPageState createState() => _JoinLobbyPageState();
}

class _JoinLobbyPageState extends State<JoinLobbyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('placeholder'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
