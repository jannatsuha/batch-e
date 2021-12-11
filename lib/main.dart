import 'package:flutter/material.dart';
import 'package:new_batch_e/flower_details.dart';
import 'package:new_batch_e/model/flower_model.dart';

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

List<FlowerModel> flowerMdlList=[
  FlowerModel("assets/image/image1.jpg",
      "Wooden Rose", "Asia",
      "সূর্যমুখী একধরনের একবর্ষী ফুলগাছ। সূর্যমুখী গাছ লম্বায় ৩ মিটার (৯.৮ ফু) হয়ে থাকে, ফুলের ব্যাস ৩০ সেন্টিমিটার (১২ ইঞ্চি) পর্যন্ত হয়। এই ফুল দেখতে কিছুটা সূর্যের মত এবং সূর্যের দিকে মুখ করে থাকে বলে এর এরূপ নামকরণ। ",
      "White"),
  FlowerModel("assets/image/image2.jpg",
      "Sunflower",
      "Asia",
      "সূর্যমুখী একধরনের একবর্ষী ফুলগাছ। সূর্যমুখী গাছ লম্বায় ৩ মিটার (৯.৮ ফু) হয়ে থাকে, ফুলের ব্যাস ৩০ সেন্টিমিটার (১২ ইঞ্চি) পর্যন্ত হয়। এই ফুল দেখতে কিছুটা সূর্যের মত এবং সূর্যের দিকে মুখ করে থাকে বলে এর এরূপ নামকরণ। ",
      "White"),
  FlowerModel("assets/image/image3.jpg",
      "Rose", "Asia",
      "সূর্যমুখী একধরনের একবর্ষী ফুলগাছ। সূর্যমুখী গাছ লম্বায় ৩ মিটার (৯.৮ ফু) হয়ে থাকে, ফুলের ব্যাস ৩০ সেন্টিমিটার (১২ ইঞ্চি) পর্যন্ত হয়। এই ফুল দেখতে কিছুটা সূর্যের মত এবং সূর্যের দিকে মুখ করে থাকে বলে এর এরূপ নামকরণ। ",
      "White"),
  FlowerModel("assets/image/img1.jpeg",
      "Red Rose",
      "Asia",
      "সূর্যমুখী একধরনের একবর্ষী ফুলগাছ। সূর্যমুখী গাছ লম্বায় ৩ মিটার (৯.৮ ফু) হয়ে থাকে, ফুলের ব্যাস ৩০ সেন্টিমিটার (১২ ইঞ্চি) পর্যন্ত হয়। এই ফুল দেখতে কিছুটা সূর্যের মত এবং সূর্যের দিকে মুখ করে থাকে বলে এর এরূপ নামকরণ। ",
      "White"),
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
            itemCount: flowerMdlList.length,
              itemBuilder: (context,index){
                return  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder:
                          (context)=>FlowerDetails
                            (flowerModel: flowerMdlList[index],)));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 8,
                              color: Colors.teal
                            )
                          ),
                            height: 200,
                            width: 200,
                            child: Image.asset
                              (
                              flowerMdlList[index].img,
                              fit: BoxFit.cover,)
                        ),
                      ),
                      Text(flowerMdlList[index].name,
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



