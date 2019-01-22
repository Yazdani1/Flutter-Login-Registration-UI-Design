import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          //First step
          Container(
            child: new Stack(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: new Text("Hello",style: TextStyle(fontSize: 25.0),),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 150.0, 0.0, 0.0),
                  child: new Text("There",style: TextStyle(fontSize: 25.0),),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(95.0, 150.0, 0.0, 0.0),
                  child: new Text(".",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.green),),
                ),

              ],
            ),
          ),//Container

          //This Container is for Input field
          Container(
            padding: EdgeInsets.only(top: 30.0,left: 20.0,right: 20.0),
            child: new Column(
              children: <Widget>[

                TextField(
                  decoration: InputDecoration(
                    labelText: "Email:",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange
                    ),
                  ),
                ),//Tex Field..

                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password:",
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange)
                    )
                  ),
                ),//Tex Field..
                SizedBox(height: 10.0,),
                
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0,left: 10.0),
                  child: new InkWell(
                    child: new Text("Forgot Password",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
    ),
                    ),
                  ),
                )//container

              ],
            ),
          ),//Container

          SizedBox(height: 20.0,),

          Container(
            height: 40.0,
            margin: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.redAccent,
              color: Colors.redAccent,
              elevation: 10.0,
              child: new GestureDetector(
                onTap: (){
                  
                },
                child: new Center(
                  child: new Text("LOGIN",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w100
                  ),),
                ),
              ),

            ),
          ),//container login

          SizedBox(height: 10.0,),

          Container(
            height: 40.0,
            color: Colors.transparent,
            child: Container(
              decoration: new BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2.0
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20.0),
              ),//Box decoration
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Center(
                    child: Icon(Icons.title)
                  ),
                  SizedBox(height: 10.0,),
                  new Center(
                    child: new Text("Login With Facebook",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black
                    ),
                    ),
                  )

                ],
              ),


            ),

          )



        ],
      ),
    );
  }
}

