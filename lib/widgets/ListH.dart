import 'package:flutter/material.dart';

const List<String> num = <String>["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

class ListH extends StatelessWidget {
  const ListH({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: num.length,
        itemBuilder: (BuildContext context, int index) {
          return Directionality(
              textDirection: TextDirection.ltr,
              child: Text(num[index]));
        },
    );
  }
}
