import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
List<String> imgList=[
  "assets/image/image1.jpg",
  "assets/image/image2.jpg",
  "assets/image/image3.jpg",
  "assets/image/img1.jpeg",
  "assets/image/img2.jpg",
  "assets/image/img3.png",
  "assets/image/img4.jpeg",
  "assets/image/img5.jpg"
];
List<String> imgName=[
  "Wooden Rose",
  "Sunflower",
  "Rose",
  "Red Rose",
  "Pink Wood Rose",
  "Dalia",
  "Pink Rose",
  "Kodom"
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("AppBar"),
      ),
      body: Center(
        child: Expanded(
          child: ListView.builder(
            itemCount: imgList.length,
              itemBuilder: (context,index){
                return  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 8,
                            color: Colors.teal
                          )
                        ),
                          height: 200,
                          width: 200,
                          child: Image.asset
                            (imgList[index],
                            fit: BoxFit.cover,)
                      ),
                      Text(imgName[index],
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20
                      ),)
                    ],
                  ),
                );
              }
          ),
        )
      )
    );
  }
}



