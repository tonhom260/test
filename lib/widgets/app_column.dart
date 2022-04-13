import 'package:ecommerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({Key? key, required this.text}) : super(key: key);


  final String text;



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Bigtext(text: text, size: Dimensions.font26,),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          children: [
            Wrap(
              children: List<Widget>.generate(
                  5,
                      (index) => Icon(Icons.star,
                      color: AppColors.mainColor, size: 15)),
            ),
            const SizedBox(
              width: 10,
            ),
            Smalltext(text: '4.5'),
            const SizedBox(
              width: 10,
            ),
            Smalltext(text: "1287"),
            const SizedBox(
              width: 10,
            ),
            Smalltext(text: "Comments")
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "32min",
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "Normal",
                iconColor: AppColors.iconColor2)
          ],
        )
      ],
    );
  }
}
