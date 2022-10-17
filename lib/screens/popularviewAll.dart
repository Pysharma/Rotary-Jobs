import 'package:flutter/material.dart';
import 'package:rotaryjob/screens/category.dart';
import 'package:rotaryjob/screens/content.dart';
import 'package:rotaryjob/screens/homepage.dart';

class AllCategoryPage extends StatefulWidget {
  const AllCategoryPage({Key? key}) : super(key: key);

  @override
  State<AllCategoryPage> createState() => _AllCategoryPageState();
}

class _AllCategoryPageState extends State<AllCategoryPage> {
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
        title: Text('All Popular Category',
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Container(
                    child : GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Categories.items.length,
                      itemBuilder: (context, index){
                        final item = Categories.items[index];
                        return Card(
                          margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                          color: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> CategoryPage()));
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xff314A5E),
                                  radius: 65,
                                  child: Image.asset(item.image,height: 80),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Text( item.name,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',

                                      color: Colors.black87,
                                    ),),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 180
                      ),
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
