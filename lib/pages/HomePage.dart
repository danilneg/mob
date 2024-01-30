import 'package:flutter/material.dart';
import 'package:mob/widgets/LimitPanel.dart';

const List<String> panelText = <String>[
  "Продукты", "Лекарства", "Сладости",
  "Игры","Техника","Расходники"];
const List<Color> panelColor = <Color>[
  Color.fromARGB(255, 255, 215, 115),
  Color.fromARGB(255, 255, 100, 64),
  Color.fromARGB(255, 117, 249, 185),
  Color.fromARGB(255, 101, 89, 234),
  Color.fromARGB(255, 227, 84, 58),
  Color.fromARGB(255, 198, 23, 204)];
const List<String> panelPr = <String>[
  "0.1", "0.1", "0.1",
  "0.1","0.1","0.1"];

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 178, 230, 252),
      body: Row(
        children: [
          Expanded(
              child: Container(),
            flex: 25,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: panelText.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index){
                return LimitPanel(
                    textPanel: panelText[index],
                colorPanel: panelColor[index],
                prPanel: panelPr[index]);
              },
            ),
            flex: 670,
          ),
          Expanded(
            child: Container(),
            flex: 25,
          ),
        ],
      )
    );
  }
}
