import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "homescreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 58.0, right: 10, left: 10),
        child: AnimSearchBar(
          width: 400,
          textController: textController,
          rtl:true,
          onSuffixTap: () {
            setState(() {
              textController.clear();
            });
          }, 
          color:Color(0xFF25B386),
          helpText:'Search Here',
          closeSearchOnSuffixTap: true,
          animationDurationInMilli: 1000,
          style:TextStyle(fontFamily:'Quicksand'),
          onSubmitted: (String ) {  },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF25B386),
        selectedItemColor:Colors.black,
        unselectedItemColor:Colors.black,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home,color:Colors.black),
            label:'Home',
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.book,color:Colors.black),
            label:'Course',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person,color:Colors.black),
            label:'Profile',
          ),
        ],
        unselectedLabelStyle: TextStyle(
          color:Colors.black,
          fontFamily:'Quicksand',
          fontWeight:FontWeight.w900,
        ),

      ),
    );
  }
}
