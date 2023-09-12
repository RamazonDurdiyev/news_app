import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/ui/user_settings/user_settings_page.dart';

profilePage(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: ScreenUtil().statusBarHeight + 8,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 4, 27, 66),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Durdiyev Ramazon",
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, fontFamily: "Regular"),
                ),
                const Text(
                  "Tashkent, Uzbekistan",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontFamily: "Regular"),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "I am professional pubger my rank is 2000 and i also like play dota 2, i live in chirchik, i am uzbek, \nif you want to play with me you can send me request",
                  style: TextStyle(
                      color: Colors.white, fontSize: 14, fontFamily: "Regular"),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      fixedSize: const Size(double.maxFinite, 20),
                      backgroundColor: Colors.transparent),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const UserSettingsPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Change my info",
                    style: TextStyle(fontFamily: "Regular"),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 4, 27, 66),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.add_box_sharp,
              size: 50,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    ],
  );
}
