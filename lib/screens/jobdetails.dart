import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rotaryjob/screens/JobsContent.dart';
import 'package:rotaryjob/screens/homepage.dart';

class JobDetails extends StatelessWidget {
  final Item item;
  JobDetails({Key? key, required this.item}) : assert(item!=null), super(key: key);


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
        title: Text('Back to jobs',
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
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/2560px-Adidas_Logo 1.png',height: 70,),
                            Container(
                              width: 220,
                              child: Text("Required Accounts Admin for Jagdalpur",
                                  style: const TextStyle(fontFamily: 'Lato',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(item.name,
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("books managed",
                            style: TextStyle(
                            fontFamily: 'Lato', fontSize: 15,color: Colors.grey)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text( 'Stipend/Salary',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    color: Colors.black87,
                                  ),),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("\₹ ${item.price}/Month ",
                                    style: TextStyle(
                                      fontSize: 16,
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
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    color: Colors.black87,
                                  ),),


                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(item.location,
                                    style: TextStyle(
                                      fontSize: 16,
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
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    color: Colors.black87,
                                  ),),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(item.date,
                                    style: TextStyle(
                                      fontSize: 16,
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
                        child: Text( "1",
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
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("About Company",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      SizedBox(height: 25,),
                    ],
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Job Type",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(item.desc,
                            style: TextStyle(
                            fontFamily: 'Lato', fontSize: 15,color: Colors.grey)),
                      ),
                    ],
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Who can apply",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      SizedBox(height: 25,),
                    ],
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Work Type",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(item.worktype,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Lato',
                            color: Colors.grey,
                          ),),
                      ),
                    ],
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Work Timing",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(item.worktiming,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Lato',
                            color: Colors.grey,
                          ),),
                      ),
                    ],
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Experience Required",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(item.experienced,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Lato',
                            color: Colors.grey,
                          ),),
                      ),
                    ],
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gender required for this job",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text("Male",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Lato',
                            color: Colors.grey,
                          ),),
                      ),
                    ],
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Qualification Required",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(item.qualification,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Lato',
                            color: Colors.grey,
                          ),),
                      ),
                    ],
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Skills Required",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: FlatButton(
                          height: 38,
                          color: Colors.white,
                          onPressed: () {  },
                          child: Text("Computer Skilled",style: TextStyle(color: Colors.black87,fontSize: 16, fontFamily: 'Lato',),),

                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("HR Details",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Row(

                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text("Contact Name",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Lato',
                                      color: Colors.black87,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text("Contact No.",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Lato',
                                      color: Colors.black87,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text("Email ID.",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Lato',
                                      color: Colors.black87,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text("Office Address - ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Lato',
                                      color: Colors.black87,
                                    ),),
                                ),

                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(item.contName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      color: Colors.grey,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(item.contNo,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      color: Colors.grey,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(item.emailID,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      color: Colors.grey,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(item.address,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      color: Colors.grey,
                                    ),),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Text("samit",
// style: TextStyle(
// fontSize: 15,
// fontFamily: 'Poppins',
// color: Colors.grey,
// ),),