import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MainCC(),
  ));
}

class MainCC extends StatefulWidget {
  @override
  State<MainCC> createState() => _MainCCState();
}

class _MainCCState extends State<MainCC> {


  int counterse=0;
  String wax="Veriable";


//const ({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
      title: Text("Win"),
        centerTitle: true,
        backgroundColor: Colors.green[400],
        elevation: 0.0,
      ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10,20,0,0),
          child: Center(
            child: Column(
              children: [Row(
                children: [
                  Expanded(child: Text("DATA",style: TextStyle(color: Colors.black,letterSpacing: 2.0,))),Expanded(child: Text("$counterse",style: TextStyle(color: Colors.black,letterSpacing: 2.0,))),Expanded(child: Text("2",style: TextStyle(color: Colors.black,letterSpacing: 2.0,))),
                ],
              ),Padding(
                padding: EdgeInsets.fromLTRB(0,18,0,0),
                child: Row(
                  children: [
                    Expanded(child: Text("$wax",style: TextStyle(color: Colors.black,letterSpacing: 2.0,))),Expanded(child: Text("1",style: TextStyle(color: Colors.black,letterSpacing: 2.0,))),Expanded(child: Text("2",style: TextStyle(color: Colors.black,letterSpacing: 2.0,))),
                  ],
                ),
              ),
                Padding(
                padding: EdgeInsets.fromLTRB(0,18,0,0),
                child: Row(
                  children: [
                    Expanded(child: TextButton(onPressed: (){setState(() {
                      counterse+=1;
                      if(counterse>10){
                        wax="10+ Veriable";
                      }
                    });},
                        child: Icon(Icons.add))),Expanded(child: Text("1",style: TextStyle(color: Colors.black,letterSpacing: 2.0,))),Expanded(child: Text("2",style: TextStyle(color: Colors.black,letterSpacing: 2.0,))),
                  ],
                ),
              ),],
            ),
          ),
        ),
    );
  }
}

