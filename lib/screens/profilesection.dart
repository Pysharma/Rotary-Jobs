
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:rotaryjob/screens/homepage.dart';

class profileSection extends StatefulWidget {
  const profileSection({Key? key}) : super(key: key);

  @override
  State<profileSection> createState() => _profileSectionState();
}

class _profileSectionState extends State<profileSection> {

  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  late String valueChoose='';
  var items = [
    "",
    "Male",
    "Female",
    "Other",
  ];

  late String valuequalification='';
  var qualification = [
    "",
  ];


  var jobtype=[
    "",
  ];


  var medium=[
    "",
  ];

  var speak=[
    "",
  ];

  var experience=[
    "",
  ];

  var skills=[
    "",
  ];

  var state=[
    "",
  ];

  var city=[
    "",
  ];

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
        title: Text('Edit Profile',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),

      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20,bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [


                      Container(
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                        child: SizedBox(
                          height: 115,
                          width: 110,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/no_user.jpg'),
                              ),
                              Positioned(
                                left: -10,
                                top: -66,
                                bottom: 0,
                                child: SizedBox(
                                  height: 46,
                                  width: 46,
                                  child: Icon(FontAwesomeIcons.plusCircle,color: Color(0xff174590),),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text("Profile Picture(Optional)" ,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87

                                  ),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  width: 200,
                                    child: Text("Add a profile picture of yourself so customers will know exactly who they'll be working with ",
                                        style: const TextStyle(fontFamily: 'Poppins',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15)
                                    ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 15),
                  child: Text('Personal Information',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontWeight: FontWeight.w500,fontSize: 22)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Full Name',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 15, bottom: 1, top: 1, right: 15),
                          hintText: 'Enter your name',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Gender',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue) {
                        setState(() {
                          valueChoose = newvalue!;
                        });
                      },
                      items: items.map((String items){
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Date of Birth',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      cursorColor: Colors.orange,
                      controller: dateinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.calendar_today,color: Colors.grey,),
                        hintText: 'Enter your date of birth',
                      ),
                      readOnly: true,  //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context, initialDate: DateTime.now(),
                            firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101)
                        );

                        if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput.text = formattedDate; //set output date to TextField value.
                          });
                        }else{
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Contact Number',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      cursorColor: Colors.orange,
                      maxLength: 10,
                      keyboardType: TextInputType.number,
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
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Email ID',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.emailAddress,
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
                        contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 6, right: 15),
                        hintText: 'Enter your email Id',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('My Qualification',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valuequalification,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valuequalification = newvalue1!;
                        });
                      },
                      items: qualification.map((String qualification){
                        return DropdownMenuItem(
                          value: qualification,
                          child: Text(qualification),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Job Type:',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChoose = newvalue1!;
                        });
                      },
                      items: jobtype.map((String jobtype){
                        return DropdownMenuItem(
                          value: jobtype,
                          child: Text(jobtype),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('My Education Medium was?',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChoose = newvalue1!;
                        });
                      },
                      items: medium.map((String medium){
                        return DropdownMenuItem(
                          value: medium,
                          child: Text(medium),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('How i speak English?',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChoose = newvalue1!;
                        });
                      },
                      items: speak.map((String speak){
                        return DropdownMenuItem(
                          value: speak,
                          child: Text(speak),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('About Myself(optional)',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 19),
                      cursorHeight: 26,
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 6, right: 15),
                        hintText: 'Please write...',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Work Experience',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChoose = newvalue1!;
                        });
                      },
                      items: experience.map((String experience){
                        return DropdownMenuItem(
                          value: experience,
                          child: Text(experience),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Preferred Skills',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChoose = newvalue1!;
                        });
                      },
                      items: skills.map((String skills){
                        return DropdownMenuItem(
                          value: skills,
                          child: Text(skills),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 5),
                  child: Text('Home Address',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 17)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 18),
                      cursorHeight: 26,
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: new InputDecoration(
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 6, right: 15),
                        hintText: 'Complete Address',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 5),
                  child: Text('State',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChoose = newvalue1!;
                        });
                      },
                      items: state.map((String state){
                        return DropdownMenuItem(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 5),
                  child: Text('City',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChoose = newvalue1!;
                        });
                      },
                      items: city.map((String city){
                        return DropdownMenuItem(
                          value: city,
                          child: Text(city),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: 180,
                    height: 47,
                    child: FloatingActionButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),

                      ),
                      backgroundColor: Colors.orangeAccent,
                      onPressed: (){ },
                      child: Text('Update',style: TextStyle(fontSize: 18),),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),

                SizedBox(height: 80,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
