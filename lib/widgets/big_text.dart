import 'package:flutter/cupertino.dart';

class Bigtext extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  Bigtext({Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 20.0,
    this.overFlow=TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(fontSize: size,
          color: color,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400),


    );
  }
}
