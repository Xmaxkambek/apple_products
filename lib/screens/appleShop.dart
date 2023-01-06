import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List img = [
    'img/i1.jpg',
    'img/i1.jpg',
    'img/i2.jpg',
    'img/i3.jpg',
    'img/i4.jpg',
    'img/i5.jpg',
    'img/i6.jpg',
    'img/i7.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffFE5720),
      drawer: const Drawer(),
      appBar: AppBar(
          title: const Text('Apple Prodects'),
          backgroundColor: const Color(0xffFE5720)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                const Padding(
                  padding:  EdgeInsets.only(top: 70, bottom: 15),
                  child:  Text(
                    'Lifestyle sale',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 150,
                      color: Colors.grey,
                      child: const Text(
                        'Shop Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ]
            ),
          ),
          ListView.builder(
            itemCount: img.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(img[index]),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
