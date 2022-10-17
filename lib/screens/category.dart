import 'package:flutter/material.dart';
import 'package:rotaryjob/screens/homepage.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Color(0xff174590),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=> homepage()),);
          },

        ),
        title: Text('Category Jobs',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
            color: Colors.white,
          ),
        ),

      ),
      body: Container(
        child: Center(
          child: Text('No Category Job Found',style: TextStyle(fontSize: 18),),
        ),
      ),
    );
  }
}
