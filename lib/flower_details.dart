import 'package:flutter/material.dart';
import 'package:new_batch_e/model/flower_model.dart';
class FlowerDetails extends StatefulWidget {
  FlowerModel flowerModel;
   FlowerDetails({Key? key,required
   this.flowerModel}) : super(key: key);

  @override
  _FlowerDetailsState createState() => _FlowerDetailsState();
}

class _FlowerDetailsState extends State<FlowerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.flowerModel.name),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset
              (widget.flowerModel.img),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Name:     ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),),
                Text(widget.flowerModel.name
                  ,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Origin:     ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),),
                Text(widget.flowerModel.origin
                  ,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Color:     ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),),
                Text(widget.flowerModel.color
                  ,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),)
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text("Details:     ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.flowerModel.details
              ,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
          ),
        ],
      ),
    );
  }
}
