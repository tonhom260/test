import 'package:ecommerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3,right: 3),
      child: Row(
        children: [
          Icon(icon,color: iconColor,),
          SizedBox(width: 5,),
          Smalltext(text:text),


        ],
      ),
    );
  }
}
