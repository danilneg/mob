import 'dart:ffi';

import 'package:flutter/material.dart';

class LimitPanel extends StatelessWidget {

  final String textPanel;
  final Color colorPanel;
  final String prPanel;

  const LimitPanel({super.key, required this.textPanel, required this.colorPanel,
    required this.prPanel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: colorPanel,
      ),
      child: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment(-0.95, -0.95),
              child: Text(
                textPanel,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            flex: 40,
          ),
          Expanded(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                width: MediaQuery.of(context).size.width*0.8,
                height: 25,
                child: Container(
                  color: Colors.greenAccent,
                  height: 25,
                  width: (MediaQuery.of(context).size.width*0.8)*(10/100),
                ),
              ),
            ),
            flex: 60,
          )
        ],
      ),
    );
  }
}