import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

searchPage() {
  return Column(
    children: [
      SizedBox(
        height: ScreenUtil().statusBarHeight,
      ),
      Container(
        width: double.infinity,
        height: 50,
        color: const Color.fromARGB(255, 4, 27, 66),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Search",
                style: TextStyle(
                  fontFamily: "Regular",
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Icon(
                Icons.filter_alt,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
