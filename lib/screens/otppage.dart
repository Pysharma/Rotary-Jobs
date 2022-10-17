import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'homepage.dart';

class otpPage extends StatefulWidget {

  final String text;
  otpPage({required this.text});

  @override
  State<otpPage> createState() => _otpPageState();
}

class _otpPageState extends State<otpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar : AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 160,
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff174590),
                  Color(0xff718fbb),

                ]
            ),
          ),
        ),
        title: Image.asset('assets/rotarylg.png',height: 150,),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0.0),
                  child : GestureDetector(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text : TextSpan(
                          style: TextStyle(
                              color: Colors.black, fontFamily: "Lato"
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Enter OTP sent to ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                            TextSpan(text: "\n\n"),
                            TextSpan(
                              text: widget.text,
                              style: TextStyle(fontSize: 18.0,
                                  color: Color(0xff4E4E4E),fontWeight: FontWeight.w500, fontFamily: "Lato"
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                  alignment: Alignment.center,
                  child :SizedBox(
                    height: 50,
                    child: OtpTextField(
                      showFieldAsBox: true,
                      cursorColor: Colors.black,
                      numberOfFields: 4,
                      borderWidth: 3,
                      focusedBorderColor: Colors.grey,
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      fieldWidth: 50,
                      decoration: new InputDecoration(
                        isDense: true,
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15, bottom: 8, top: 8, right: 15),
                        hintText: 'Enter your mobile number',
                      ),
                      textStyle: TextStyle(
                          fontFamily: "Lato",fontSize: 15.0,color: Colors.black,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: (){},
                          child: Text('Resend in 00:00',style: TextStyle(fontFamily: 'Lato',fontSize: 17,color: Colors.red,),),
                        ),
                      ),

                      TextButton(
                        onPressed: (){},
                        child: Text('Resend OTP',style: TextStyle(fontFamily: 'Lato',fontSize: 19,decoration: TextDecoration.underline,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: SizedBox(
          child: Container(
            width: 180,
            height: 47,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),

              ),
              backgroundColor: Colors.orangeAccent,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> homepage()),);
              },
              child: Text('Verify',style: TextStyle(fontSize: 18,fontFamily: 'Lato'),),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
