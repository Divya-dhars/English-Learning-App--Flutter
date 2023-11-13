import 'package:flutter/material.dart';
class AdminScreen extends StatefulWidget {
  static const String id="admiinscreen";
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  void addVideos(){

  }
  void addPhotos(){

  }
  void addText(){

  }
  void addTest(){
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AdminScreen')),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed:addVideos,
                  child: Text('Add Videos'),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed:addPhotos,
                  child: Text('Add Photos'),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed:addText,
                  child: Text('Add Text'),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed:addTest,
                  child: Text('Add Assessment'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}