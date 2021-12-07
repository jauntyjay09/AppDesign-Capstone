import 'dart:ui';

import 'package:flutter/material.dart';

class landing extends StatefulWidget {
  @override
  State<landing> createState() => _landingState();
}

class _landingState extends State<landing> with SingleTickerProviderStateMixin{
  late TabController tabController;

  void initState() {
    tabController =
        TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
         backgroundColor: Color(0xff05060A),
        appBar: AppBar(
          backgroundColor: Color(0xff05060A),
          toolbarHeight: 200,
          centerTitle: true,
          title: Text('Welcome username',style: TextStyle(color: Color(0xff7784AF)),),
          bottom: TabBar(
            controller: tabController,
            indicatorColor: Color(0xffbb4553),
            labelColor:Color(0xffbb4553),
            unselectedLabelColor: Color(0xff7784AF),
            tabs: [
              Tab(text: 'All',),
              Tab(text: 'Event',),
              Tab(text: 'Complain',),
           ],
          ),
        ),
          body: TabBarView(
            controller: tabController,
            children:<Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          color: Color(0xff414282),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: FlatButton(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Icon(Icons.chat,color: Colors.white,size: 90,),
                                SizedBox(height: 10,),
                                Text('Chatbot',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            onPressed: (){},
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          color: Color(0xff414282),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: FlatButton(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Icon(Icons.event_available,color: Colors.white,size: 90,),
                                SizedBox(height: 10,),
                                Text('Event',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            onPressed: (){
                              tabController.animateTo(1);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          color: Color(0xff414282),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: FlatButton(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Icon(Icons.reviews,color: Colors.white,size: 90,),
                                SizedBox(height: 10,),
                                Text('Complain',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            onPressed: (){
                              tabController.animateTo(2);
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          color: Color(0xff414282),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: FlatButton(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Icon(Icons.calendar_today,color: Colors.white,size: 90,),
                                SizedBox(height: 10,),
                                Text('Calendar',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            onPressed: (){},
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          color: Color(0xff414282),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: FlatButton(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Icon(Icons.view_agenda,color: Colors.white,size: 90,),
                                SizedBox(height: 10,),
                                Text('View',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            onPressed: (){},
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          color: Color(0xff414282),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: FlatButton(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Icon(Icons.add_comment,color: Colors.white,size: 90,),
                                SizedBox(height: 10,),
                                Text('Add review',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            onPressed: (){},
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          color: Color(0xff414282),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: FlatButton(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Icon(Icons.reviews,color: Colors.white,size: 90,),
                                SizedBox(height: 10,),
                                Text('View review',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            onPressed: (){},
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: Color(0xff414282),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: FlatButton(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Icon(Icons.view_agenda,color: Colors.white,size: 90,),
                            SizedBox(height: 10,),
                            Text('View complains',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: Color(0xff414282),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: FlatButton(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Icon(Icons.add_comment_outlined,color: Colors.white,size: 90,),
                            SizedBox(height: 10,),
                            Text('Add complains',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        onPressed: (){},
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
