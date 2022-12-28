import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rotaryjob/screens/JobsContent.dart';
import 'package:rotaryjob/screens/homepage.dart';
import 'package:rotaryjob/screens/jobdetails.dart';
import 'package:rotaryjob/screens/resumeUpload.dart';

class AllJobsView extends StatefulWidget {
  const AllJobsView({Key? key}) : super(key: key);

  @override
  State<AllJobsView> createState() => _AllJobsViewState();
}

class _AllJobsViewState extends State<AllJobsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
        title: Text('Popular Jobs Near You',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
            color: Colors.white,
          ),
        ),

      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Catalogmodel.items.length,
                  itemBuilder: (context, index){
                    final item = Catalogmodel.items[index];
                    return Card(
                      margin: EdgeInsets.only(left: 5,right: 5,top: 15,bottom: 10),
                      elevation: 5,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Container(
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
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text( item.name,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset('assets/2560px-Adidas_Logo 1.png',height: 40,),
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5),
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
                                    child: Text(item.opening,
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.bold,
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


                                  TextButton(
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.orangeAccent) ,
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ResumeUpload(),),);
                                    },
                                    child: Text("Apply Now",style: TextStyle(color: Colors.white),),

                                  ),

                                ],),
                            ),
                            SizedBox(height: 5,)
                          ],
                        ),
                      ),
                    );
                  },

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
