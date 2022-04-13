import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 3;
  late String firstText;
  late String secondText;

  @override
  void initState() {
    super.initState();
    print('width+${Dimensions.screenWidth} \n height+${Dimensions.screenHeight}' );
    if (widget.text.length > textHeight) {
      firstText = widget.text.substring(0, textHeight.toInt());
      secondText =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstText = widget.text;
      secondText = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondText.isEmpty
            ? Smalltext(color: AppColors.paraColor,size: Dimensions.font16,
                text: firstText,
              )
            : Column(
              children: [
                Smalltext(text: hiddenText?firstText+'....':(firstText + secondText),color: AppColors.paraColor,size: Dimensions.font16,),
                Row(
                  children: [
                    Smalltext(text: "Show more",color: AppColors.mainColor),
                    InkWell(
                      onTap: (){
                        setState(() {
                          hiddenText=!hiddenText;
                        });
                      },
                      child: Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,
                      ),
                    ),
                  ],
                )
              ],
            )
    );
  }
}
