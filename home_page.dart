import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'applocale.dart';
import 'go_page.dart';
import 'rotate_me_page.dart';



class HomePage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Text(
         "${getLang(context, "homepage")}",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true, // Center the AppBar title
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        elevation: 4,
      ),
      body: Container(
        color: Colors.blueGrey[500], // Background color for the body
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch across the width
          children: [
            // Container for Name input with green background
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey[400], // Green background for the container
              child: TextField(
                controller: _nameController,
                textAlign: TextAlign.center, // Centering the input text
                decoration:  InputDecoration(
                  hintText:  "${getLang(context, "passward")}",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white, // White background for text field
                ),
              ),

            ),

            SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey[400], // Green background for the container
              child: TextField(
                controller: _passController,
                textAlign: TextAlign.center, // Centering the input text
                decoration:  InputDecoration(
                  hintText:  "${getLang(context, "name")}",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white, // White background for text field
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Container for Go and Clear buttons
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blueGrey[200], // Light blue-gray for the container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Even spacing
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if(_nameController.text =="aubd"&&_passController.text=="1234") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GoPage(),
                          ),
                        );
                      }
                    },
                    child:  Text(
                      "${getLang(context, "go")}",
                      style: TextStyle(color: Colors.black), // Set button text color to black
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _nameController.clear();
                    },
                    child:  Text(
                      "${getLang(context, "clear")}",
                      style: TextStyle(color: Colors.black), // Set button text color to black
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Container for Rotate Me and Close buttons
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blueGrey[200], // Light blue-gray for the container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Even spacing
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RotateMePage(),
                        ),
                      );
                    },
                    child:  Text(
                      "${getLang(context, "Rotate me")}",
                      style: TextStyle(color: Colors.black), // Set button text color to black
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child:  Text(
                      "${getLang(context, "close")}",
                      style: TextStyle(color: Colors.black), // Set button text color to black
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
