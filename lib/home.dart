import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    final double width = screen.width;
    final double height = screen.height;

    print("Lebar layar: $width");
    print("Tinggi layar: $height");

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.home),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child:
              width > 800
                  ? Row(
                    children: [
                      Expanded(child: PostImage()),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          children: [
                            PostData(),
                            const SizedBox(height: 20.0),
                            PostTitle(),
                            const SizedBox(height: 20.0),
                            PostDescription(),
                          ],
                        ),
                      ),
                    ],
                  )
                  : Column(
                    children: [
                      PostImage(),
                      const SizedBox(height: 20.0),
                      PostData(),
                      const SizedBox(height: 20.0),
                      PostTitle(),
                      const SizedBox(height: 20.0),
                      PostDescription(),
                      SizedBox(width: double.infinity, height: 10.0),
                    ],
                  ),
        ),
      ),
    );
  }

  Text PostDescription() {
    return Text(
      "Saya sedang belajar menggunakan Framework Flutter yang bisa berjalan di berbagai platform termasuk Android, iOS, Web, dan Desktop",
      textAlign: TextAlign.justify,
      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.normal),
    );
  }

  Align PostTitle() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Latihan Flutter",
        style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  ClipRRect PostImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset('assets/epictetus.jpg', fit: BoxFit.cover),
    );
  }

  Row PostData() {
    return Row(
      children: [
        Icon(EvaIcons.heartOutline, color: Colors.red),
        const SizedBox(width: 5.0),
        Text('66'),
        const SizedBox(width: 20.0),
        Icon(EvaIcons.messageCircleOutline),
        const SizedBox(width: 5.0),
        Text('66'),
        const SizedBox(width: 20.0),
        Icon(EvaIcons.shareOutline),
        const SizedBox(width: 5.0),
        Text('66'),
        Spacer(),
        Icon(EvaIcons.bookmarkOutline),
        const SizedBox(width: 5.0),
        Text('66'),
      ],
    );
  }
}
