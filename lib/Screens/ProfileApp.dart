import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profileapp/Constant/constant.dart';
import 'package:profileapp/Screens/GridView.dart';
class ProfileApp extends StatefulWidget {
  const ProfileApp({ Key? key }) : super(key: key);

  @override
  _ProfileAppState createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
        child: Stack(
          children: [
            Details(),
            Positioned(
              left: 125.0,
              top:50.0,
              child: Container(
                height: 90.0,
                width: 80.0,
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      backgroundImage: AssetImage('images/abhishek.jpg'),
                    )
                  ],
                ),
              
              ),
            ),
            Positioned(
              child: Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.cog,
                  size: 30.0,
                  ),
                  onPressed: (){
                   
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GridViewPage()));
                  },
                ),
              )
              )
           
          ]
        ),
      ),
        
      
    );
  }
}

// Widget Containing all the details
class Details extends StatelessWidget {
  const Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Expanded(
         
         flex: 2,
         child:Container(
          
           width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
             
           ),
           child: 
           Image(
             image: AssetImage('images/coding.gif'),
             fit: BoxFit.fitWidth,
             ),
         ) 
         ),
         Expanded(
           flex: 8,
           child: Column(
             children: [
               Padding(
                 padding: EdgeInsets.only(top: 40.0),
                 child: Text(details[0],
                 style: GoogleFonts.lato(
                   fontSize: 20.0,
                   fontWeight:FontWeight.bold 
                 ),
                 )),
                  Padding(
                 padding: EdgeInsets.only(top: 10.0),
                 child: Text(details[1],
                 style: GoogleFonts.lato(
                   fontSize: 18.0,
                   fontWeight:FontWeight.normal 
                 ),
                 )),
                 Padding(
                   padding: const EdgeInsets.only(top:25.0),
                   child: Divider(
                     color: Colors.black,
                     thickness: 2.0,
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.all(20.0),
                   child: Card(
                     elevation: 10.0,
                     color: Colors.grey[50],
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20.0)
                     ),
                     child: DetailsCard(),
                   ),
                   
                   )
             ],
           )
           )
     ],
          );
  }
}


// Card containg all the information
class DetailsCard extends StatelessWidget {
static const icon_data = <IconData> [
    Icons.location_city_outlined,
    Icons.email_outlined,
    Icons.phone
  ];
  const DetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsTile(details[2],'Location',icon_data[0]),
        Divider(
          color: Colors.black,
          thickness: 1.0,
        ),
        DetailsTile(details[3],'Email',icon_data[1]),
        Divider(
          color: Colors.black,
          thickness: 1.0,
        ),
        DetailsTile(details[4],'Phone',icon_data[2]),
      ],
    );
  }


  // Function to load all the list tiles
  // ignore: non_constant_identifier_names
  ListTile DetailsTile(String self_inforamtion,String about_information,IconData icons) {
    
    return ListTile(
        leading: Icon(icons),
        title: Text(self_inforamtion,
        style: GoogleFonts.lato(
          fontSize: 15.0
        ),
        ),
        subtitle: Text(about_information,
        style: GoogleFonts.lato(),),
      );
  }
}