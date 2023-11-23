import 'package:flutter/material.dart';

class SuccessfullyBookedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Allow content to pass through the AppBar
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0, // Set elevation to 0 to make it visually consistent with the body
        iconTheme: IconThemeData(color: Colors.black),
     
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 80.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Booking Successful!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor: Color.fromRGBO(21, 127, 123, 1),
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back to Home',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SuccessfullyBookedPage(),
  ));
}
