import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.home),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    AlertDialog alert = AlertDialog(
                      title: Text('Hi'),
                      content: Text("Hello World"),
                      actions: [
                        TextButton(
                          child: Text("OK"),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  },
                  child: Text(
                    "Hello World",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hello from Flutter App. Tutorial membangun aplikasi multiplatform dengan Flutter",
                style: GoogleFonts.poppins(),
                textAlign: TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            InkWell(
              hoverColor: Colors.blue.withValues(alpha: 0.5),
              onHover: (value) => print("Hover"),
              onTap: () => print("InkWell clicked"),
              child: Icon(
                EvaIcons.heart,
                size: 100,
                color: Colors.red,
                shadows: const [
                  Shadow(
                    blurRadius: 19.0,
                    color: Colors.redAccent,
                    offset: Offset(7, 8),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red.shade900,
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Antique_Valentine_1909_01.jpg/330px-Antique_Valentine_1909_01.jpg",
                width: double.infinity,
                height: 500,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Antique_Valentine_1909_01.jpg/330px-Antique_Valentine_1909_01.jpg",
                width: double.infinity,
                height: 400,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/epictetus.jpg',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 300,
              height: 40.0,
              child: ElevatedButton(
                onPressed: () => print("Elevated button clicked"),
                child: const Text("Click me"),
              ),
            ),
            SizedBox(width: double.infinity, height: 10.0),
            FilledButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              onPressed: () => print("Filled button clicked"),
              child: const Text("Filled Button"),
            ),
            SizedBox(width: double.infinity, height: 40.0),
            TextButton(
              onPressed: () => print("Text button clicked"),
              child: const Text("Text Button"),
            ),
            SizedBox(width: double.infinity, height: 40.0),
            OutlinedButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.blue),
                backgroundColor: WidgetStateProperty.all(Colors.white),
                side: WidgetStateProperty.all(BorderSide(color: Colors.blue)),
              ),
              onPressed: () => print("Outlined button clicked"),
              child: const Text("Outlined Button"),
            ),
            SizedBox(width: double.infinity, height: 40.0),
            IconButton(
              onPressed: () => print("Icon button clicked"),
              icon: const Icon(Icons.add),
            ),
            SizedBox(width: double.infinity, height: 40.0),
            FloatingActionButton(
              onPressed: () => print("Floating action button clicked"),
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
