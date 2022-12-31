import 'package:flutter/material.dart';

Color? kcolor = Colors.grey[850];
Icon? karrow = const Icon(Icons.arrow_forward_ios_rounded);
Text ktext2 = const Text('');



class Kcard extends StatelessWidget {
  const Kcard({required this.lead, required this.text1,});
  final Icon lead;
  final Text text1;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kcolor,
      child: ListTile(
        leading: lead,
        title: text1,
        trailing: karrow,
      ),
    );
  }
}
