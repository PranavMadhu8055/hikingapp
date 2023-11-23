import 'package:flutter/material.dart';
import 'thirdscreen.dart';
import 'secondpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final DatabaseReference database = FirebaseDatabase.instance.reference();
  Map<String, dynamic>? userData;

  @override
  void initState() {
    super.initState();
    fetchDataFromFirebase();
  }

  Future<void> fetchDataFromFirebase() async {
    try {
      DataSnapshot snapshot = await database.child('users').get();
      if (snapshot.value != null && snapshot.value is Map) {
        setState(() {
          userData = Map<String, dynamic>.from(snapshot.value as Map);
        });
      }
    } catch (error) {
      print("Error fetching data from Firebase: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(userData);
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: [
                    Text(""),
                  ],
                ),
                Row(
                  children: [
                    Text(""),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Login ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.white, // Text color is set to white
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors
                                .white), // Label text color is set to white
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  Colors.white), // Border color is set to white
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      onPressed: () {
                        bool userFound = false;

                        userData!.forEach((key, value) {
                          if (value['email'] == emailController.text &&
                              value['password'] == passwordController.text) {
                            userFound = true;
                            return; // Break out of the loop once a matching user is found
                          }
                        });

                        if (userFound) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Categories()),
                          );
                        } else {
                          // Show SnackBar with red background and white text
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.red,
                              content: Text(
                                'Invalid email or password',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        }
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginScreen(),
//     );
//   }
// }

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Firebase Data Retrieval'),
//       ),
//       body: Center(
//         child: userData != null
//             ? Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Name: ${userData!['name'] ?? 'N/A'}"),
//                   Text("Gender: ${userData!['gender'] ?? 'N/A'}"),
//                   Text("Age: ${userData!['age'] ?? 'N/A'}"),
//                   Text("Email: ${userData!['email'] ?? 'N/A'}"),
//                   Text("Photo: ${userData!['photo'] ?? 'N/A'}"),
//                   Text("Password: ${userData!['password'] ?? 'N/A'}"),
//                 ],
//               )
//             : userData == null
//                 ? Text("No data available.")
//                 : CircularProgressIndicator(),
//       ),
//     );
//   }
// }
