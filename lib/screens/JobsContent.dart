class Catalogmodel{
  static final items = [
    Item(id: 1,
      name: "ZYZ company",
      desc: 'Accounts Admin',
      price: 12000,
      location: "Jagdalpur" ,
      image: 'assets/Rectangle 631.png',
      date: "16 Aug 2022",
      opening: "1",
      worktype: "Full Time" ,
      worktiming: "8 Hr Hrs",
      experienced: "03-05 Years",
      qualification: "12th Pass",
      contName: "samit",
      contNo: "6454545455",
      emailID: "sumitashu007@gmail.com",
      address: "Jagdalpur",
    ),
    Item(id: 1,
      name: "XYZ company",
      desc: 'Accounts Admin',
      price: 12000,
      location: "Jagdalpur" ,
      image: 'assets/Rectangle 631.png',
      date: "16 Aug 2022",
      opening: "1",
      worktype: "Full Time" ,
      worktiming: "8 Hr Hrs",
      experienced: "03-05 Years",
      qualification: "12th Pass",
      contName: "samit",
      contNo: "6454545455",
      emailID: "sumitashu007@gmail.com",
      address: "Jagdalpur",
    ),

  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final  num price;
  final String location;
  final String image;
  final String date;
  final String opening;

  final String worktype;
  final String worktiming;
  final String experienced;
  final String qualification;
  final String contName;
  final String contNo;
  final String emailID;
  final String address;




  Item({ required this.id,
    required this.name,
    required this.desc ,
    required this.price ,
    required this.location,
    required this.image,
    required this.date,
    required this.opening,
    required this.worktype,
    required this.worktiming,
    required this.qualification,
    required this.experienced,
    required this.contName,
    required this.contNo,
    required this.emailID,
    required this.address,


  });

}