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
  int _page = 2;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          shadowColor: Colors.transparent,
          title: Text('Assess Mentor',
              style: TextStyle(fontFamily: 'Quicksand', color: Colors.black)),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
              child: AnimSearchBar(
                width: 400,
                textController: textController,
                rtl: true,
                onSuffixTap: () {
                  setState(() {
                    textController.clear();
                  });
                },
                color: Color(0xFF25B386),
                helpText: 'Search Here',
                closeSearchOnSuffixTap: true,
                animationDurationInMilli: 1000,
                style: TextStyle(fontFamily: 'Quicksand'),
                onSubmitted: (String) {},
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 400,
                      height: 300,
                      child: Card(
                        elevation:10.0,
                        child:Image.asset('assets/grammar.jpg'),
                        margin:EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 300,
                      child: Card(
                        elevation:10.0,
                        child:Image.asset('assets/grammar1.jpg'),
                        margin:EdgeInsets.all(10.0),
                        color:Color(0xFF25B386),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 300,
                      child: Card(
                        elevation:10.0,
                        child:Image.asset('assets/parts.jpg'),
                        margin:EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
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
              Icon(Icons.check_circle_outlined, size: 25),
              Icon(Icons.book_outlined, size: 25),
              Icon(Icons.person_outlined, size: 25),
            ],
            buttonBackgroundColor: Color(0xFF25B386),
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            letIndexChange: (index) => true,
          ),
        ),
      ),
    );
  }
}
