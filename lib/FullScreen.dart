import 'package:flutter/material.dart';

class FullScreen extends StatefulWidget {
  final String imageurl;

  const FullScreen({super.key, required this.imageurl});

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text("Selected Image"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
            onPressed: () {
            Navigator.of(context).pop();}
    )),
      body: Container(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                    child: Image.network(widget.imageurl),
                  )
              ),
            ]
          )
        )
    );
  }
}
