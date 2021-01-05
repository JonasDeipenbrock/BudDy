import 'package:BudDy/choose_game.dart';
import 'package:flutter/material.dart';

import 'join_lobby.dart';

class MainMenuNavigation extends StatelessWidget {
  var mainColors = ["092463", "1d94fc", "ca3551", "ffffff", "261a08"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: RawMaterialButton(
                onPressed: null,
                child: Icon(Icons.settings),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseGameMenu()),
                      );
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Text(
                      'Create Lobby',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    padding: EdgeInsets.all(75.0),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JoinLobbyPage()),
                      );
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Text(
                      'Join Lobby',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    padding: EdgeInsets.all(75.0),
                    shape: CircleBorder(),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF092463),
    );
  }
}
