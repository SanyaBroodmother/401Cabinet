import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  SafeArea(
        bottom: false,
        child: Center(
          child: Column(

            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,

            children: <Widget>[
              Expanded(
                child:
                Row(
                  children: <Widget>[
                    Expanded(child:
                    Container(
                      color: Colors.black,
                      margin: EdgeInsets.only(left: 8, top: 8, right: 4, bottom: 4),
                      child: Center(
                        child: Text("1", style: TextStyle(color: Colors.white, fontSize: 300),),
                      ),
                    ),
                    ),
                    Expanded(child: Container(color: Colors.yellow, margin: EdgeInsets.only(left: 4, top: 8, right: 8, bottom: 4),
                      child: Center(
                        child:Text("2", style: TextStyle(color: Colors.indigo, fontSize: 300),),
                      ),
                    )),
                  ],
                ),
                flex: 3,
              ),
              Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.red, margin: EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 4),
                      child: Center(
                        child: Text("3", style: TextStyle(color: Colors.green,fontSize: 100),),
                      ),)),
                      Expanded(child: Container(color: Colors.orange, margin: EdgeInsets.only(left: 4, top: 4, right: 8, bottom: 4),
                      child: Center(
                        child: Text("4", style: TextStyle(color: Colors.blue, fontSize: 100),),
                      ),)),
                    ],
                  ),
                  flex:1
              ),
              Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.indigoAccent, margin: EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 4),
                      child: Center(
                        child: Text("5", style: TextStyle(color: Colors.purple, fontSize: 100),),
                      ),)),
                      Expanded(child: Container(color: Colors.cyan, margin: EdgeInsets.only(left: 4, top: 4, right: 8, bottom: 4),
                      child: Center(
                        child: Text("6", style: TextStyle(color: Colors.pink, fontSize: 100),),
                      ),)),
                    ],
                  ),
                  flex:1
              ),
              Expanded(
                child:
                Row(
                  children: <Widget>[
                    Expanded(child: Container(color: Colors.teal, margin: EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 8),
                    child: Center(
                      child: Text("7", style: TextStyle(color: Colors.brown, fontSize: 300),),
                    ),)),
                    Expanded(child: Container(color: Colors.grey, margin: EdgeInsets.only(left: 4, top: 4, right: 8, bottom: 8),
                    child: Center(
                      child: Text("8", style: TextStyle(color: Colors.redAccent, fontSize: 300),),
                    ),)),
                  ],
                ),
                flex: 3,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
