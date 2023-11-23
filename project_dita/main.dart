import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Picture Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      )
      home: PictureNavigationScreen(),
    );
  }
}

class PictureNavigationScreen extends StatefulWidget {
  @override
  _PictureNavigationScreenState createState() =>
      _PictureNavigationScreenState();
}

class _PictureNavigationScreenState extends State<PictureNavigationScreen> {
  final List<String> images = [
    'assets/img (1).jpg',
    'assets/img (2).jpg',
    'assets/img (3).jpg',
    'assets/img (4).jpg',
    'assets/img (5).jpg',
    'assets/img (6).jpg',
    'assets/img (7).jpg',
    'assets/img (8).jpg',
    'assets/img (9).jpg',
    'assets/img (10).jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picture Navigation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            images[currentIndex],
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                child: Text('Pertama'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = (currentIndex + 1) % images.length;
                  });
                },
                child: Text('Berikutnya'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex =
                        (currentIndex - 1 + images.length) % images.length;
                  });
                },
                child: Text('Sebelumnya'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = images.length - 1;
                  });
                },
                child: Text('Terakhir'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
