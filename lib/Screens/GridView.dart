import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profileapp/Screens/Github_WebPage.dart';
import 'package:profileapp/Screens/Linkedin_WebPage.dart';
import 'package:profileapp/Screens/ProfileApp.dart';


class GridViewPage extends StatefulWidget {
  const GridViewPage({ Key? key }) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: Text('Settings',
          style: GoogleFonts.lato(
            color: Colors.black
          )
          ),
        ),
        ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 2,
          primary: true,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: (0.7/.4),
          children: [
            navigateHomePage(context),
            navigateGithubRepos(context),
            navigateLinkedinProfile(context),
            navigatetoCourses(context,'Flutter'),
            navigatetoCourses(context,'Dart'),
            navigatetoCourses(context,'Python'),
            navigatetoCourses(context,'C'),
            navigatetoCourses(context,'C++')

             
          ],
          ),
      ),
    
      
    );
  }

// Function to Naviagte to ProfileCard
  Container navigateHomePage(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.grey[350],
               boxShadow: [
          new BoxShadow(
            color: Colors.grey.shade200,
            offset: new Offset(10.0, 10.0),
          ),
          
        ],
            ),
        padding: EdgeInsets.all(8.0),
       child: Padding(
       padding: const EdgeInsets.only(top:20.0),
       child: InkWell(
        onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileApp()));
        },
        child: Column(
          children: [
            Icon(
              FontAwesomeIcons.home
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Home',
            style:GoogleFonts.lato() ,)
          ],
        ),
    ),
     ),
  );
  }

// Function to Navigate to Github Repos
  Container navigateGithubRepos(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.grey[350],
               boxShadow: [
          new BoxShadow(
            color: Colors.grey.shade200,
            offset: new Offset(10.0, 10.0),
          ),
          
        ],
            ),
        padding: EdgeInsets.all(8.0),
       child: Padding(
       padding: const EdgeInsets.only(top:20.0),
       child: InkWell(
        onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> GithubWeb()));
        },
        child: Column(
          children: [
            Icon(
              FontAwesomeIcons.github
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Github',
            style:GoogleFonts.lato() ,)
          ],
        ),
    ),
     ),
  );
  }


// Function to Navigate to Linkedin Profile
  Container navigateLinkedinProfile(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.grey[350],
               boxShadow: [
          new BoxShadow(
            color: Colors.grey.shade200,
            offset: new Offset(10.0, 10.0),
          ),
          
        ],
            ),
        padding: EdgeInsets.all(8.0),
       child: Padding(
       padding: const EdgeInsets.only(top:20.0),
       child: InkWell(
        onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> LinkedinWeb()));
        },
        child: Column(
          children: [
            Icon(
              FontAwesomeIcons.linkedin
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Linkedin',
            style:GoogleFonts.lato() ,)
          ],
        ),
    ),
     ),
  );
  }

// Function Containing all the details
  Container navigatetoCourses(BuildContext context, String course) {
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.grey[350],
               boxShadow: [
          new BoxShadow(
            color: Colors.grey.shade200,
            offset: new Offset(10.0, 10.0),
          ),
          
        ],
            ),
        padding: EdgeInsets.all(8.0),
       child: Padding(
       padding: const EdgeInsets.only(top:20.0),
       child: InkWell(
        onTap: 
        
        (){
          showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Courses Learned"),
                  content: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                  actions: <Widget>[
                
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Text("Got It!"),
                    ),
                  ],
                ),
              );
        
        },
        child: Column(
          children: [
            Icon(
              FontAwesomeIcons.book
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(course,
            style:GoogleFonts.lato() ,)
          ],
        ),
    ),
     ),
  );
  }

   
}



