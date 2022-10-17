import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rotaryjob/screens/JobsContent.dart';
import 'package:rotaryjob/screens/popularLcJb.dart';
import 'package:rotaryjob/screens/popularviewAll.dart';
import 'package:rotaryjob/screens/profilesection.dart';
import 'package:rotaryjob/screens/resumeUpload.dart';
import 'category.dart';
import 'content.dart';
import 'jobdetails.dart';
import 'jobsViewAll.dart';
import 'locationAll.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Image.asset('assets/rotarylg.png',height: 95,),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset('assets/drawer.jpg',
                        height: 45,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Rotary Jobs',style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'Lato'),),
                          SizedBox(height: 5),
                          Text(Strings.number,style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 15,fontFamily: 'Lato'),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff174590),
              ),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.userEdit,size: 20,color: Colors.black,
            ),
              title: Text('Edit Profile',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> profileSection()));
              },
            ),
            ListTile(
              leading: Icon(
                  FontAwesomeIcons.solidFileAlt,color: Colors.black,size: 25,
              ),
              title: Text('My Applications',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.solidQuestionCircle,color: Colors.black,size: 25,
              ),
              title: Text('FAQ',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                Icons.receipt_long_rounded,color: Colors.black,size: 25,
              ),
              title: Text('Terms & Conditions',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_sharp,color: Colors.black87,),
              title: Text('Privacy Policy',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.whatsapp,color: Colors.black,size: 25,
              ),
              title: Text('WhatsApp Support',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                Icons.mail,color: Colors.black87,size: 25,
              ),
              title: Text('Email Support',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,color: Colors.black,size: 25,
              ),
              title: Text('Logout',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 55,
                elevation: 5,
                centerTitle: false,
                backgroundColor: Colors.black,
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: TextButton(
                        onPressed: (){},
                      child: Text('Help?',style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: 'Lato'),),

                    ),
                  ),
                ],
              ),
              Container(
                color: Color(0xff174590),
                child: Stack(
                  children: <Widget>[
                    AppBar(
                      automaticallyImplyLeading: false,
                      toolbarHeight: 160,
                      elevation: 0,
                      centerTitle: true,
                      backgroundColor: Color(0xff174590),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Find the perfect',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,fontFamily: 'Lato'),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          child: Text('Jobs',style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Lato'),),
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 5),
                              hintText: 'Search "Engineering jobs"',
                              prefixIcon: Icon(Icons.search,size: 26,),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular categories",style: TextStyle(fontFamily: 'Lato',color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18)),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> AllCategoryPage()),);
                      },
                      child: Row(
                        children: [
                          Text('View all',style: TextStyle(fontFamily: 'Lato',fontSize: 14,color: Color(0xff174590),fontWeight: FontWeight.w600),),
                          Icon(Icons.arrow_forward_ios,color: Color(0xff174590),size: 16,),
                        ],
                      ),
                    ),
                  ],),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Categories.items.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        final item = Categories.items[index];
                        return Card(
                          margin: EdgeInsets.only(top: 5,bottom: 20,left: 6,right: 6),
                          elevation: 0,
                          color: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0)
                          ),
                          child: InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryPage(),),),
                            child: Column(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Color(0xff314A5E),
                                    radius: 65,
                                  child: Image.asset('assets/document.png',height: 80,),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  child: Text(item.name ,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                    ),),
                                ),
                              ],
                            ),
                          ),
                        );
                      },

                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Locations",style: TextStyle(fontFamily: 'Lato',color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18)),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> AllLocationPage()),);
                      },
                      child: Row(
                        children: [
                          Text('View all',style: TextStyle(fontFamily: 'Lato',fontSize: 14,color: Color(0xff174590),fontWeight: FontWeight.w600),),
                          Icon(Icons.arrow_forward_ios,color: Color(0xff174590),size: 16,),
                        ],
                      ),
                    ),
                  ],),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: SizedBox(
                    height: 170,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Locations.items.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        final item = Locations.items[index];
                        return Card(
                          margin: EdgeInsets.only(right: 5,top: 14,bottom: 10,left: 5),
                          elevation: 0,
                          color: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0)
                          ),
                          child: InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> popularLcJob(),),),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                  child: Image.asset(item.image,height: 80,),
                                ),
                                Text(item.name ,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
                                  ),),
                              ],
                            ),
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.3,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                color: Color(0xff174590),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 180,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: RichText(
                                    textAlign: TextAlign.start,
                                    text : TextSpan(
                                        style: TextStyle(
                                            color: Colors.white, fontFamily: "Lato"
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(text: 'Find Jobs\n& Internships',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                                          TextSpan(text: "\n\n"),
                                          TextSpan(text: 'Get Rewarded By The Best Employment Portal, Initiated By Rotary Club Of India',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400)),
                                        ]
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Image.asset('assets/manimg.png',height: 170,fit: BoxFit.fitWidth,alignment: Alignment.centerLeft),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Jobs near you",style: TextStyle(fontFamily: 'Lato',color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18)),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> AllJobsView()),);
                      },
                      child: Row(
                        children: [
                          Text('View all',style: TextStyle(fontFamily: 'Lato',fontSize: 14,color: Color(0xff174590),fontWeight: FontWeight.w600),),
                          Icon(Icons.arrow_forward_ios,color: Color(0xff174590),size: 16,),
                        ],
                      ),
                    ),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: Catalogmodel.items.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      final item = Catalogmodel.items[index];
                      return Card(
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        elevation: 5,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text( item.name,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),),
                                      ),
                                      Image.asset('assets/2560px-Adidas_Logo 1.png',height: 40,),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text(item.desc,style: TextStyle(
                                        fontFamily: 'Lato', fontSize: 15,color: Colors.grey)),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text( 'Stipend/Salary',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Lato',
                                                color: Colors.black87,
                                              ),),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text("\₹ ${item.price}/Month ",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                ),),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text( 'Location',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Lato',
                                                color: Colors.black87,
                                              ),),


                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text(item.location,
                                                style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87,
                                              ),),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text( 'Apply by',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Lato',
                                                color: Colors.black87,
                                              ),),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text(item.date,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                ),),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text( "Openings",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Lato',
                                        color: Colors.black87,
                                      ),),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4),
                                    child: Text( item.opening,
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Lato',
                                        color: Colors.black,
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),


                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> JobDetails(item: item),),);
                                    },
                                    child: Text('View Details',style: TextStyle(fontFamily: 'Lato',fontSize: 15,color: Colors.black87,),),
                                  ),


                                  FlatButton(
                                    height: 42,
                                    color: Colors.orangeAccent,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ResumeUpload(),),);
                                    },
                                    child: Text("Apply Now",style: TextStyle(color: Colors.white,fontFamily: 'Lato'),),

                                  ),

                                ],),
                            ),
                            SizedBox(height: 7,)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
