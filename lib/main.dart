import 'package:flutter/material.dart';
import 'mainPage.dart';
import 'widgets/ListH.dart';

const List<String> num = <String>["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
const List<String> num1 = <String>["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"];


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(flex: 10,
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: num.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Center(
              child: Text(num[index], style: TextStyle(fontSize: 30),),
            ),
          );
        })
        ),
            Expanded(child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: num1.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Center(
                      child: Text(num1[index], style: TextStyle(fontSize: 30),),
                    ),
                  );
                }),
            flex: 20,)
          ],
        ),
      ),
    );
  }
}
