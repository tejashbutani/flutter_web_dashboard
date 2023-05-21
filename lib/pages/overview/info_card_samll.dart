import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_trext.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;
  final Function onTap;

  const InfoCardSmall({Key? key,required this.title,required this.value, this.isActive = false,required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: isActive ? green : grey.withOpacity(0.3), width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: title, size: 24, fontWeight: FontWeight.w300, color: isActive ? darkBlue : grey,),
                CustomText(text: value, size: 24, fontWeight: FontWeight.w300, color: isActive ? darkBlue : grey,)

              ],)
        ),
      ),
    );
  }
}