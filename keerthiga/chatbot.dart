import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../chatmsgmodel.dart';
import 'dart:async';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  _contactState createState() => _contactState();
}

class _contactState extends State<contact> {
  final fieldText = TextEditingController();
  String msg='',eventname='',clubname='',date='',time='';
  var name,mobile,cabin,age;
  String fac='',mess='',event='',course='';
  var m=[],e=[],c=[];
  int start=0;

  List<ChatMessage> messages = [];

  // reply(){
  //   fac="";
  //   m=msg.split(" ");
  //   for(int i=0;i<m.length;i++)
  //   {
  //     if(m[i]=="faculty")
  //     {
  //       start=i;
  //     }
  //   }
  //   for(int i=start+1;i<m.length;i++)
  //   {
  //     fac=fac+m[i]+" ";
  //   }
  //   fac=fac.trimRight();
  //   fac=fac.toUpperCase();
  //   print(fac);
  //   getData(fac);
  // }
  //
  // void getData(String fac) async {
  //   http.Response response = await http.get(
  //     Uri.parse('https://chatbotfortbi.herokuapp.com/contact/$fac'),);
  //   try {
  //     setState(() {
  //       print(response.statusCode);
  //       if (response.statusCode == 200) {
  //         var decodedData = jsonDecode(response.body);
  //         print(decodedData);
  //         print(decodedData==null);
  //         // print(decodedData['name']);
  //         if(decodedData!=null)
  //         {
  //           name = decodedData['name'];
  //           age=decodedData['timings'];
  //           cabin=decodedData['cabin'];
  //           mobile=decodedData['mobile'];
  //           // names=name.toString();
  //           // ages=age.toString();
  //           // cabins=cabin.toString();
  //           // mobiles=mobile.toString();
  //           mess=" name:$name \n mobile:$mobile \n cabin:$cabin \n free timings:$age ";
  //           print(mess);
  //           setState(() {
  //             messages.add(ChatMessage(messageContent:mess,messageType: "receiver"));
  //           });
  //         }
  //         else
  //         {
  //           setState(() {
  //             messages.add(ChatMessage(messageContent:"Sorry faculty $fac details not available",messageType: "receiver"));
  //           });
  //         }
  //       } else {
  //         print(response.statusCode);
  //         setState(() {
  //           messages.add(ChatMessage(messageContent:"Sorry faculty $fac details not available",messageType: "receiver"));
  //         });
  //       }
  //     });
  //   } catch (e) {
  //     print(e);
  //     setState(() {
  //       messages.add(ChatMessage(messageContent:"Sorry I dont understand,Try again later",messageType: "receiver"));
  //     });
  //   }
  // }
  //
  // replyevent(){
  //   event = "";
  //   e = msg.split(" ");
  //   for (int i = 0; i < e.length; i++) {
  //     if (e[i] == "event") {
  //       start = i;
  //     }
  //   }
  //   for (int i = start + 1; i < e.length; i++) {
  //     event = event + e[i] + " ";
  //   }
  //   event = event.trimRight();
  //   event = event.toLowerCase();
  //   print(event);
  //   getevent(event);
  // }
  //
  // void getevent (String event) async
  // {
  //   // CollectionReference ref = FirebaseFirestore.instance.collection('event_details');
  //   // QuerySnapshot eventsQuery =  await ref.where('eventname', isEqualTo: event).get();
  //   // if(eventsQuery.docs.isNotEmpty)
  //   //   {
  //   //     eventsQuery.docs.forEach((msgDoc) {
  //   //       print(msgDoc["eventname"]);
  //   //       eventname=msgDoc["eventname"];
  //   //       clubname=msgDoc["clubname"];
  //   //       date=msgDoc["Date"];
  //   //       time=msgDoc["Time"];
  //   //       print("Event Name:$eventname \n Club name:$clubname \n Date:$date \n Time:$time");
  //   //       setState(() {
  //   //         messages.add(ChatMessage(messageContent: " Event Name:$eventname \n Club name:$clubname \n Date:$date \n Time:$time", messageType: "receiver"));
  //   //       });
  //   //     });
  //   //   }
  //   // else
  //   //   {
  //   //     setState(() {
  //   //       messages.add(ChatMessage(messageContent: "Sorry event details not available", messageType: "receiver"));
  //   //     });
  //   //   }
  //   http.Response response = await http.get(
  //     Uri.parse('https://apiforevent.herokuapp.com/event/$event'),);
  //   try {
  //     setState(() {
  //       print(response.statusCode);
  //       if (response.statusCode == 200) {
  //         var decodedData = jsonDecode(response.body);
  //         print(decodedData);
  //         print(decodedData==null);
  //         // print(decodedData['name']);
  //         if(decodedData!=null)
  //         {
  //           eventname = decodedData['Events']['eventname'];
  //           clubname=decodedData['Events']['clubname'];
  //           time=decodedData['Events']['Time'];
  //           date=decodedData['Events']['Date'];
  //           // names=name.toString();
  //           // ages=age.toString();
  //           // cabins=cabin.toString();
  //           // mobiles=mobile.toString();
  //           mess=" Event Name:$eventname \n Club name:$clubname \n Date:$date \n Time:$time ";
  //           print(mess);
  //           setState(() {
  //             messages.add(ChatMessage(messageContent:mess,messageType: "receiver"));
  //           });
  //         }
  //         else
  //         {
  //           setState(() {
  //             messages.add(ChatMessage(messageContent:"Sorry event $event details not available",messageType: "receiver"));
  //           });
  //         }
  //       } else {
  //         print(response.statusCode);
  //         setState(() {
  //           messages.add(ChatMessage(messageContent:"Sorry event $event details not available",messageType: "receiver"));
  //         });
  //       }
  //     });
  //   } catch (e) {
  //     print(e);
  //     setState(() {
  //       messages.add(ChatMessage(messageContent:"Sorry I dont understand,Try again later",messageType: "receiver"));
  //     });
  //   }
  // }
  //
  // // void initState() {
  // //   super.initState();
  // // }
  //
  // replycourse(){
  //   course = "";
  //   c = msg.split(" ");
  //   for (int i = 0; i < c.length; i++) {
  //     if (c[i] == "course") {
  //       start = i;
  //     }
  //   }
  //   for (int i = start + 1; i < c.length; i++) {
  //     course = course + c[i] + " ";
  //   }
  //   course = course.trimRight();
  //   course = course.toUpperCase();
  //   print(course);
  //   getcourse(course);
  // }
  //
  // void getcourse (String course) async
  // {
  //   // CollectionReference ref = FirebaseFirestore.instance.collection('event_details');
  //   // QuerySnapshot eventsQuery =  await ref.where('eventname', isEqualTo: event).get();
  //   // if(eventsQuery.docs.isNotEmpty)
  //   //   {
  //   //     eventsQuery.docs.forEach((msgDoc) {
  //   //       print(msgDoc["eventname"]);
  //   //       eventname=msgDoc["eventname"];
  //   //       clubname=msgDoc["clubname"];
  //   //       date=msgDoc["Date"];
  //   //       time=msgDoc["Time"];
  //   //       print("Event Name:$eventname \n Club name:$clubname \n Date:$date \n Time:$time");
  //   //       setState(() {
  //   //         messages.add(ChatMessage(messageContent: " Event Name:$eventname \n Club name:$clubname \n Date:$date \n Time:$time", messageType: "receiver"));
  //   //       });
  //   //     });
  //   //   }
  //   // else
  //   //   {
  //   //     setState(() {
  //   //       messages.add(ChatMessage(messageContent: "Sorry event details not available", messageType: "receiver"));
  //   //     });
  //   //   }
  //   http.Response response = await http.get(
  //     Uri.parse('https://apiforevent.herokuapp.com/course/$course'),);
  //   try {
  //     setState(() {
  //       print(response.statusCode);
  //       if (response.statusCode == 200) {
  //         var decodedData = jsonDecode(response.body);
  //         print(decodedData);
  //         print(decodedData==null);
  //         // print(decodedData['name']);
  //         if(decodedData!=null)
  //         {
  //           if(course.contains(new RegExp(r'[0-9]')))
  //           {
  //             var code = decodedData['course']['code'];
  //             var credit=decodedData['course']['credit'];
  //             var name = decodedData['course']['name'];
  //             var desc=decodedData['course']['desc'];
  //             var sem=decodedData['course']['sem'];
  //             // names=name.toString();
  //             // ages=age.toString();
  //             // cabins=cabin.toString();
  //             // mobiles=mobile.toString();
  //             mess=" code:$code \n name:$name \n about:$desc \n credit:$credit \n adviced to take this course on your $sem ";
  //             print(mess);
  //             setState(() {
  //               messages.add(ChatMessage(messageContent:mess,messageType: "receiver"));
  //             });
  //           }
  //           else
  //           {
  //             var subjects=decodedData['course']['courses'];
  //             var sub='';
  //             for(int i=0;i<subjects.length;i++)
  //             {
  //               sub=sub+subjects[i]+"\n";
  //             }
  //             print(sub);
  //             mess="available courses are \n$sub";
  //             print(mess);
  //             setState(() {
  //               messages.add(ChatMessage(messageContent:mess,messageType: "receiver"));
  //             });
  //           }
  //         }
  //         else
  //         {
  //           setState(() {
  //             messages.add(ChatMessage(messageContent:"Sorry event $event details not available",messageType: "receiver"));
  //           });
  //         }
  //       } else {
  //         print(response.statusCode);
  //         setState(() {
  //           messages.add(ChatMessage(messageContent:"Sorry event $event details not available",messageType: "receiver"));
  //         });
  //       }
  //     });
  //   } catch (e) {
  //     print(e);
  //     setState(() {
  //       messages.add(ChatMessage(messageContent:"Sorry I dont understand,Try again later",messageType: "receiver"));
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff13212e),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back,color: Colors.black,),
                ),
                SizedBox(width: 2,),
                // SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Vbot",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600,color: Colors.white),),
                      SizedBox(height: 6,),
                      Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SizedBox(
        child: Container(
          color: Color(0xff05060A),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                padding:EdgeInsets.only(bottom:50),
                child: ListView.builder(
                  itemCount: messages.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return  Container(
                      padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                      child: Align(
                        alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (messages[index].messageType  == "receiver"?Color(0xff13212e):Color(0xff7784AF)),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15,color:Colors.white),),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                  height: 50,
                  width: double.infinity,
                  color: Color(0xff13212e),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Expanded(
                        child: TextField(
                          controller: fieldText,
                          onChanged: (value){
                            msg=value;
                          },
                          decoration: InputDecoration(
                              hintText: "Write message...",
                              hintStyle: TextStyle(color: Colors.black54),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      FloatingActionButton(
                        onPressed: (){
                          messages.add(ChatMessage(messageContent: msg,messageType: "sender"));
                          msg=msg.toLowerCase();
                          if(msg.contains("faculty"))
                          {
                            setState(() {
                              messages.add(ChatMessage(messageContent: "fac details", messageType: "receiver"));
                            });
                          }
                          else if(msg.contains("event"))
                          {
                            setState(() {
                              messages.add(ChatMessage(messageContent: "event details", messageType: "receiver"));
                            });
                          }
                          else if(msg.contains("course"))
                          {
                            setState(() {
                              messages.add(ChatMessage(messageContent: "course details", messageType: "receiver"));
                            });
                          }
                          else if(msg=="hi" || msg=="hello" || msg=="hey" || msg=="hola")
                          {
                            setState(() {
                              messages.add(ChatMessage(messageContent: "Hey,How can I help you?", messageType: "receiver"));
                            });
                          }
                          else {
                            setState(() {
                              messages.add(ChatMessage(messageContent: "Sorry could not understand", messageType: "receiver"));
                            });
                          }
                          fieldText.clear();
                        },
                        child: Icon(Icons.send,color: Colors.white,size: 18,),
                        backgroundColor: Color(0xff13212e),
                        elevation: 0,
                      ),
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