import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rotaryjob/screens/homepage.dart';

import 'thankU.dart';

class ResumeUpload extends StatefulWidget {
  const ResumeUpload({Key? key}) : super(key: key);

  @override
  State<ResumeUpload> createState() => _ResumeUploadState();
}

class _ResumeUploadState extends State<ResumeUpload> {
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
        title: Text('Resume Upload',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),

      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Colors.black54,width: 1
                  )
                ),
                child: InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Icon(Icons.file_upload_outlined,size: 100,color: Colors.grey,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text("Upload Resume",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),),
                              ),
                              Container(
                                width: 220,
                                child: Text("Supported upload formats: 5MB max in .DOC, .DOCX, or .PDF",
                                    style: const TextStyle(fontFamily: 'Poppins',color: Colors.redAccent,fontSize: 16)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20,left: 5),
                        child: Divider(color: Colors.grey,height: 130,thickness: 1,)),),
                  Text('or',style: TextStyle(fontSize: 22),),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 20,right: 5),
                        child: Divider(color: Colors.grey,height: 130,thickness: 1,)),),
                ],
              ),

              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1)
                ),
                margin: EdgeInsets.symmetric(),
                width: double.infinity,
                child: FlatButton(
                  child: Text("Apply Using Profile",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> ThankyouPage()),);
                  },
                  color: Colors.white,
                  textColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            height: 50,
            margin: EdgeInsets.symmetric(),
            width: double.infinity,
            child: FlatButton(
              child: Text("Apply",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              onPressed: (){

              },
              color: Colors.orangeAccent,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
