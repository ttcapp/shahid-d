import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
String btnText1="Top Button";
Color btnColor1=Colors.greenAccent;
bool img1Visibility=false;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Shahid") ,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
     children: [
           SizedBox(
           height: 20,
         ),
           RaisedButton(
             color: btnColor1,
             child: Text(btnText1,style:
             TextStyle(color:
             Colors.red,fontWeight:
             FontWeight.bold,
             fontSize: 50 ),)
               ,onPressed: (){
               setState(() {
                 btnText1="Button pressed";
                 btnColor1=Colors. black;
                 img1Visibility=true;
               });
           }),
           Visibility(
             visible: img1Visibility,
               child:
           Image.network(
               "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")),

           Container(
             height:  200,
               width: 250,
               child: Image.asset("assets/images/image1.jpg")),
     ],
    ),
        ),
      ),

    );
  }
}



