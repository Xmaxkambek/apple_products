import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List img = [
    'img/i3.jpg',
    'img/i4.jpg',
    'img/i5.jpg',
    'img/i6.jpg',
    'img/i7.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFE5720),
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color(0xffFE5720),
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Apple Products'),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              width: double.infinity,
              child: ListView.builder(
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(img[index]),
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
