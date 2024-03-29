import 'package:flutter/material.dart';
import 'package:taxi_app_flutter/helpers/style.dart';

import 'custom_text.dart';

class CustomBtn extends StatelessWidget {
  final String  text;
  final Color  txtColor;
  final Color  bgColor;
  final Color shadowColor;
  final Function () onTap;

   CustomBtn(
      { Key key,
         this.text,
         this.txtColor,
         this.bgColor,
         this.shadowColor,
         this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: bgColor ?? black,
            boxShadow: [
              BoxShadow(
                  color: shadowColor == null
                      ? Colors.grey.withOpacity(0.5)
                      : shadowColor.withOpacity(0.5),
                  offset: Offset(2, 3),
                  blurRadius: 4)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: CustomText(
            text: text,
            color: txtColor ?? white,
            size: 22,
            weight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}