import 'package:flutter/material.dart';

import 'applocale.dart';
import 'home_page.dart';

class GoPage extends StatefulWidget {
  @override
  _GoPageState createState() => _GoPageState();
}

class _GoPageState extends State<GoPage> {
  final TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "${getLang(context, "go page")}",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
      ),
      body: Container(
        color: Colors.blueGrey[500], // Background color
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blueGrey[200], // Light blue-gray container color
              child: TextField(
                controller: _inputController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: "Mobile/Web",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white, // White background for the text field
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blueGrey[200], // Consistent container color
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Corrected spelling
                children: [
                  SizedBox(
                    width: 150, // Consistent button width
                    child: ElevatedButton(
                      onPressed: () async {

                      },
                      child:  Text(
                        "${getLang(context, "web")}",
                        style: TextStyle(color: Colors.black), // Black text
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150, // Consistent button width
                    child: ElevatedButton(
                      onPressed: () async {

                      },
                      child:  Text(
                        "${getLang(context, "mobile")}",
                        style: TextStyle(color: Colors.black), // Black text
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Container for "Back Home" with consistent style
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blueGrey[200], // Consistent container color
              child: SizedBox(
                width: 150, // Consistent button width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:  Text(
                    "${getLang(context, "back home")}",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
