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
                    ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child:Container(
                      width: 400,
                      height: 275,
                      child: Card(
                        elevation: 10.0,
                        child: Container(
                          child: Image.asset('assets/grammar.jpg'),
                        ),
                        margin: EdgeInsets.only(left:10.0,right:20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                   ),
                    Container(
                      width: 400,
                      height: 275,
                      child: Card(
                        elevation: 10.0,
                       margin: EdgeInsets.only(left:10.0,right:20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0), // Use the same border radius here
                          child: Image.asset('assets/grammar1.jpg',fit:BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 275,
                      child: Card(
                        elevation: 10.0,
                        margin: EdgeInsets.only(left:10.0,right:20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0), // Use the same border radius here
                          child: Image.asset('assets/pos4.jpg',fit:BoxFit.cover),
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
              Icon(Icons.check_circle_outlined, size: 25, color: _page == 0 ? Color(0xFF25B386) : Colors.black),
              Icon(Icons.book_outlined, size: 25, color: _page == 1 ? Color(0xFF25B386) : Colors.black),
              Icon(Icons.person_outlined, size: 25, color: _page == 2 ? Color(0xFF25B386) : Colors.black),
            ],
            backgroundColor: const Color.fromARGB(0, 188, 95, 95),
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
