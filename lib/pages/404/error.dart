import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/gallery.dart';
import 'package:flutter_web_dashboard/widgets/custom_trext.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(kImgError, width: 350,),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(text: "Page not found", size: 24, fontWeight: FontWeight.bold,),
            ],
          )
        ],
      ),
    );
  }
}