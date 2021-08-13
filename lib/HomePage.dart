import 'package:flutter/material.dart';
import 'Screens/Github_WebPage.dart';
import 'Screens/ProfileApp.dart';
import 'Screens/Linkedin_WebPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{
  late TabController _tabcontroller;
  @override
  void initState(){
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
    _tabcontroller.addListener(_tabChanged);
  }

  @override
  void dispose(){
    super.dispose();
    _tabcontroller.dispose();
  }

  void _tabChanged(){
    if(_tabcontroller.indexIsChanging){
      print('Tab Changed : ${_tabcontroller.index}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TabBarView(
          controller: _tabcontroller,
          children: [
            ProfileApp(),
            GithubWeb(),
            LinkedinWeb()
          ]),
      ),
      bottomNavigationBar: Material(

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 55.0,
              child: TabBar(
                
                controller: _tabcontroller,
                labelColor: Colors.black54,
                unselectedLabelColor: Colors.black38,
              
                tabs: [
                  Tab(
                    icon: FaIcon(FontAwesomeIcons.home),
                    text: 'Profile Card',
                  ),
                  Tab(
                    icon: FaIcon(FontAwesomeIcons.github),
                    text: 'Guthub',
                  ),
                  Tab(
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    text: 'Linkedin',
                  ),
                ],
              ),
            ),
          ),),
      ),
      
    );
  }
}