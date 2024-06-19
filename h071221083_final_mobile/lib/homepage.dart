import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar nama gambar
    final List<String> images = [
      'images/555.jpg', 'images/agito.jpg', 'images/blade.jpg', 'images/Build.jpg', 'images/decade.jpg', 'images/deno.jpg', 'images/Drive.jpg', 'images/ExAid.jpg', 'images/Fourze.jpg', 'images/Gaim.jpg', 'images/geats.jpg', 'images/Ghost.jpg', 'images/hibiki.jpg', 'images/kabuto.jpg', 'images/kiva.jpg', 'images/Kuuga.jpg', 'images/Kuuga_logo.jpg', 'images/OOO.jpg', 'images/revice.jpg', 'images/ryuuki.jpg', 'images/Saber.jpg', 'images/W.jpg', 'images/Wizard.jpg', 'images/zero_one.jpg', 'images/Zio.jpg',
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26.0, 30.0, 35.0, 20.0),
          child: AppBar(
            title: const Text('Rider Library - M Nabil Shadiq'),
            actions: [
              CircleAvatar(
                radius: 28,
                child: FlutterLogo(size: 25),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
            child: Text(
              "Kamen Riders",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(40, 20, 35, 0),
            child: Row(
              children: images.map((imagePath) => scrollview(imagePath: imagePath)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class scrollview extends StatelessWidget {
  final String imagePath;

  const scrollview({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      width: 280,
      height: 450,
      margin: const EdgeInsets.only(right: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}