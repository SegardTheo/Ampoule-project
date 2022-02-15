import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ampoule_service.dart';

class Ampoule extends StatefulWidget {
  const Ampoule({Key? key}) : super(key: key);

  @override
  _AmpouleState createState() => _AmpouleState();
}

class _AmpouleState extends State<Ampoule> {
  // Générer les valeurs des boutons toggle :
  List<bool> _selections = [true, false];
  AmpouleService ampoule = AmpouleService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
              image: AssetImage(ampoule.ampouleChoisie)
          ),
          ToggleButtons(
            children: const <Widget>[
              Icon(Icons.lightbulb_outline),
              Icon(Icons.lightbulb)
            ],
            onPressed: (int index) {
              ampoule.ChangeAmpoule(index);

              setState(() {
                for (int buttonIndex = 0; buttonIndex < _selections.length; buttonIndex++) {
                  if (buttonIndex == index) {
                    _selections[buttonIndex] = true;
                  } else {
                    _selections[buttonIndex] = false;
                  }
                }
              });
            },
            isSelected: _selections,
          )
        ],
      ),
    );
  }
}
