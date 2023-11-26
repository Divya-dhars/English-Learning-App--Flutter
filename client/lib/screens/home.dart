import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "homescreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textController = TextEditingController();
  int _page = 1;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          shadowColor: Colors.transparent,
          title: Text(
            'Assess Mentor',
            style: TextStyle(fontFamily: 'Quicksand', color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
           padding: const EdgeInsets.only(top: 50.0, right: 10, left: 10),
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                     SizedBox(width: 16),
                    Container(
                      width: screenWidth * 0.9,
                      height: 270,
                       margin: EdgeInsets.only(right: 66.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/card.jpg',
                                fit: BoxFit.cover,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white.withOpacity(0.3),
                                      Colors.transparent
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 16,
                                left: 16,
                                right: 16,
                                child: Text(
                                  'Introduction',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.9,
                      height: 270,
                       margin: EdgeInsets.only(right: 66.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/card.jpg',
                                fit: BoxFit.cover,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white.withOpacity(0.3),
                                      Colors.transparent
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                              ),
                              Positioned(
                                
                                bottom: 16,
                                left: 16,
                                right: 16,
                                child: Text(
                                  'Parts of Speech',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.9,
                      height: 270,
                       margin: EdgeInsets.only(right: 66.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/card.jpg',
                                fit: BoxFit.cover,
                              ),
                              
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white.withOpacity(0.3),
                                      Colors.transparent
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 16,
                                left: 16,
                                right: 16,
                                child: Text(
                                  'Grammar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ),

        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.black),
            shadowColor: Colors.transparent,
          ),
          child: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 1,
            height: 75.0,
            items: <Widget>[
              buildNavItem(Icons.check_circle_outlined, 0),
              buildNavItem(Icons.book_outlined,1),   
              buildNavItem(Icons.person_outlined,2),     
            ],
            backgroundColor: const Color.fromARGB(0, 188, 95, 95),
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          ),
        ),
      ),
    );
  }
   Widget buildNavItem(IconData icon, int pageIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _page = pageIndex;
        });
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _page == pageIndex ? Colors.teal.withOpacity(0.2) : Colors.transparent,
        ),
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _page == pageIndex
              ? AlwaysStoppedAnimation(1.0)
              : AlwaysStoppedAnimation(0.0),
          size: 30,
          color: _page == pageIndex ? Colors.teal : Colors.black,
        ),
      ),
    );
  }
}
