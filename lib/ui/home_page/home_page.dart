import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/ui/home_page/home_event.dart';
import 'package:news_app/ui/notification_page/notification_page.dart';
import 'package:news_app/ui/profile_page/profile_page.dart';
import 'package:news_app/ui/save_page/save_page.dart';
import 'package:news_app/ui/search_page/search_page.dart';
import 'package:news_app/ui/settings_page/settings_page.dart';
import 'home_bloc.dart';
import 'home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = HomeBloc();
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: homeBloc,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 1, 19, 49),
          bottomNavigationBar: _buildBottomBar(homeBloc),
          body: homeBloc.bottomIndex == 0
              ? _buildBody(context)
              : homeBloc.bottomIndex == 1
                  ? searchPage()
                  : homeBloc.bottomIndex == 2
                      ? savePage()
                      : profilePage(context),
        );
      },
    );
  }

  _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 4, 27, 66),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  8,
                ),
                bottomRight: Radius.circular(
                  8,
                ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().statusBarHeight,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "prodapp business",
                        style: TextStyle(
                          fontFamily: "Regular",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const NotificationPage();
                              },
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SettingsPage();
                              },
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
                _buildCarousel(),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Motivation today",
              style: TextStyle(
                fontFamily: "Regular",
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 4, 27, 66),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Never stop! \nWhen you think you lose, it is very close to success. So you should think before stop.",
                      maxLines: 10,
                      style: TextStyle(
                        fontFamily: "Regular",
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Steven Paul Jobs, The New York Times, 1995y",
                      maxLines: 10,
                      style: TextStyle(
                        fontFamily: "Regular",
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Courses",
              style: TextStyle(
                fontFamily: "Regular",
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                _buildCoursesItem("assets/images/usa_flag.png", "USD: 12.35"),
                _buildCoursesItem("assets/images/eu_flag.png", "EU: 86.54"),
                _buildCoursesItem("assets/images/rus_flag.png", "RUB: 37.78"),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Last published",
              style: TextStyle(
                fontFamily: "Regular",
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildListItem();
            },
          )
        ],
      ),
    );
  }

  _buildCarousel() {
    return CarouselSlider(
      items: [
        _buildCarouselItem("assets/images/ad1.png"),
        _buildCarouselItem("assets/images/ad2.png"),
        _buildCarouselItem("assets/images/ad3.png"),
      ],
      options: CarouselOptions(
        autoPlay: true,
        height: 100,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayInterval: const Duration(seconds: 3),
      ),
    );
  }

  _buildCarouselItem(String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 4, 27, 67).withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(
                    4,
                  ),
                  bottomRight: Radius.circular(
                    4,
                  ),
                ),
              ),
              height: 30,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Tap for more",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Regular",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildBottomBar(HomeBloc homeBloc) {
    return BlocBuilder<HomeBloc, HomeState>(
        bloc: homeBloc,
        builder: (context, state) {
          return BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,
            currentIndex: homeBloc.bottomIndex,
            onTap: (value) {
              homeBloc.add(
                ChangeBottomIndexEvent(selectedIndex: value),
              );
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromARGB(255, 4, 27, 66),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.search),
                icon: Icon(
                  Icons.search,
                ),
                label: "News",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.bookmark),
                icon: Icon(
                  Icons.bookmark_border,
                ),
                label: "Saved",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.person_2),
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: "Profile",
              ),
            ],
          );
        });
  }

  _buildListItem() {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
        left: 8,
        right: 8,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 4, 27, 66),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/ad3.png",
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Facebook",
                  style: TextStyle(
                      fontSize: 18, fontFamily: "Regular", color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Hello everybody! This app name is Facebook and this app helps you for search new friends by social media and search people you interested ",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Regular",
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildCoursesItem(String img, String country) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 4, 27, 66),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            image: DecorationImage(
              opacity: 0.3,
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
          child: Center(
            child: Text(
              country,
              style: const TextStyle(
                fontFamily: "Regular",
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
