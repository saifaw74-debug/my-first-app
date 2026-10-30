import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String from = "العشار";
  String to = "البراضعية";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تكسي البصرة"), backgroundColor: Colors.black),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(16)),
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children:[
                Icon(Icons.local_taxi, size: 50),
                Text("تكسي البصرة - اطلب هسه", style: TextStyle(fontWeight: FontWeight.bold)),
              ]),
            ),
            SizedBox(height: 20),
            ListTile(title: Text("من: $from"), leading: Icon(Icons.my_location)),
            ListTile(title: Text("الى: $to"), leading: Icon(Icons.location_on)),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text("اطلب التكسي", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  showDialog(context: context, builder: (c)=>AlertDialog(title: Text("تم الطلب!"), content: Text("سايق جايك من $from الى $to"), actions: [TextButton(onPressed: ()=>Navigator.pop(c), child: Text("تمام"))]));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String from = "العشار";
  String to = "البراضعية";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تكسي البصرة"), backgroundColor: Colors.black),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(16)),
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children:[
                Icon(Icons.local_taxi, size: 50),
                Text("تكسي البصرة - اطلب هسه", style: TextStyle(fontWeight: FontWeight.bold)),
              ]),
            ),
            SizedBox(height: 20),
            ListTile(title: Text("من: $from"), leading: Icon(Icons.my_location)),
            ListTile(title: Text("الى: $to"), leading: Icon(Icons.location_on)),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text("اطلب التكسي", style: TextStyle(color: Colors.white)),
                onPressed: (){
                  showDialog(context: context, builder: (c)=>AlertDialog(title: Text("تم الطلب!"), content: Text("سايق جايك من $from الى $to"), actions: [TextButton(onPressed: ()=>Navigator.pop(c), child: Text("تمام"))]));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
