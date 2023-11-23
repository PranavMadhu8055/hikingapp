import 'dart:io';
import 'package:flutter/material.dart';
import 'thirdscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;




class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background/background.jpg"),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: NameInputWidget(),
          ),
        ),
      ),
    );
  }
}

class NameInputWidget extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Column(
          children: [
            Row(
              children: [
                Text(
                  "Create ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ],
            ),
          ],
        ),
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            labelText: 'Name',
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Row(
              children: [
                Text(
                  "* ",
                  style: TextStyle(color: Colors.yellow),
                ),
                Text(
                  "* * * * *",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                // Save the data to shared preferences
                prefs.setString('name', nameController.text);

                // Navigate to the next screen (e.g., GenderInputWidget)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GenderInputWidget()),
                );
              },
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class GenderInputWidget extends StatefulWidget {
  @override
  _GenderInputWidgetState createState() => _GenderInputWidgetState();
}

class _GenderInputWidgetState extends State<GenderInputWidget> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Create ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Column(
              //   children: [
              //     Row(
              //       children: [
              //         Text(
              //           "Select Gender",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 20,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  Radio<String>(
                    value: 'Male',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value!;
                      });
                    },
                  ),
                  Text('Male', style: TextStyle(color: Colors.white)),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'Female',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value!;
                      });
                    },
                  ),
                  Text('Female', style: TextStyle(color: Colors.white)),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Row(
                    children: [
                      Text(
                        "* *",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      Text(
                        " * * * *",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setString('gender', selectedGender);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AgeInputWidget(),
                        ),
                      );
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
    );
  }
}

// class AgeInputWidget extends StatelessWidget {
//   final TextEditingController ageController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/background/background.jpg"),
//               fit: BoxFit.cover),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Row(
//                 children: [
//                   Text(""),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text(""),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Create ",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 40),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         "Account",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 40),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               TextField(
//                 controller: ageController,
//                 decoration: InputDecoration(
//                   labelText: 'Age',
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SizedBox(),
//                   Row(
//                     children: [
//                       Text(
//                         "* * *",
//                         style: TextStyle(color: Colors.yellow),
//                       ),
//                       Text(
//                         " * * *",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.blue,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(50.0),
//                       ),
//                     ),
//                     onPressed: () async {
//                       SharedPreferences prefs =
//                           await SharedPreferences.getInstance();
//                       // Save the data to shared preferences
//                       prefs.setString('age', ageController.text);

//                       // Navigate to the next screen (e.g., GenderInputWidget)
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => EmailInputWidget()),
//                       );
//                     },
//                     child: Icon(
//                       Icons.arrow_forward,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class AgeInputWidget extends StatefulWidget {
  @override
  _AgeInputWidgetState createState() => _AgeInputWidgetState();
}

class _AgeInputWidgetState extends State<AgeInputWidget> {
  String? selectedAge; // To store the selected age

  final List<String> ageOptions =
      List.generate(100, (index) => (index + 1).toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Create ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                ],
              ),
              DropdownButton<String>(
                value: selectedAge,
                hint: Text("Select Age"),
                items: ageOptions.map((String age) {
                  return DropdownMenuItem<String>(
                    value: age,
                    child: Text(age),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedAge = newValue!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Row(
                    children: [
                      Text(
                        "* * *",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      Text(
                        " * * *",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    onPressed: () async {
                      if (selectedAge != null) {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('age', selectedAge!);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhoneNumberWidget(),
                          ),
                        );
                      } else {
                        // Age not selected, you can display an error or prompt the user
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
    );
  }
}






class PhoneNumberWidget extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background/background.jpg"),
              fit: BoxFit.cover),
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
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Create ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                ],
              ),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'phone',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Row(
                    children: [
                      Text(
                        "* ",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      Text(
                        "* * * * *",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      // Save the data to shared preferences
                      prefs.setString('phone', phoneController.text);

                      // Navigate to the next screen (e.g., GenderInputWidget)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmailInputWidget()),
                      );
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
    );
  }
}













class EmailInputWidget extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background/background.jpg"),
              fit: BoxFit.cover),
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
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Create ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                ],
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Row(
                    children: [
                      Text(
                        "* ",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      Text(
                        "* * * * *",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      // Save the data to shared preferences
                      prefs.setString('email', emailController.text);

                      // Navigate to the next screen (e.g., GenderInputWidget)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhotoInputWidget()),
                      );
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
    );
  }
}











class PhotoInputWidget extends StatelessWidget {
  final TextEditingController photoController = TextEditingController();



  final FirebaseStorage _storage = FirebaseStorage.instance;
  final Reference _storageRef = FirebaseStorage.instance.ref().child('images');

  XFile? _image;
 
  Future<void> _uploadImage() async {
    final picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
 SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        

                        String? phone = prefs.getString('phone');
    if (image != null) {
      try {
        // Generate a unique filename based on the current timestamp
        String fileName = '$phone.jpg';

        // Upload the image to Firebase Storage
        UploadTask task = _storageRef.child(fileName).putFile(File(image.path));

        // Wait for the upload to complete
        await task.whenComplete(() => print('Image uploaded'));

        // Get the download URL
        String downloadURL = await _storageRef.child(fileName).getDownloadURL();
        print('Download URL: $downloadURL');
      } catch (e) {
        print('Error uploading image: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background/background.jpg"),
              fit: BoxFit.cover),
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
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Create ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                ],
              ),
              

 ElevatedButton(
              onPressed: _uploadImage,
              child: Text('Select Image'),
            ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Row(
                    children: [
                      Text(
                        "* ",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      Text(
                        "* * * * *",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),



                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasswordInputWidget()),
                      );
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
    );
  }
}

class PasswordInputWidget extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background/background.jpg"),
              fit: BoxFit.cover),
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
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Create ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ],
                  ),
                ],
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Row(
                    children: [
                      Text(
                        "* ",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      Text(
                        "* * * * *",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      onPressed: () async {

                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        prefs.setString('password', passwordController.text);

                        String? name = prefs.getString('name');
                        String? gender = prefs.getString('gender');
                        String? age = prefs.getString('age');
                        String? email = prefs.getString('email');
                        
                        String? phone = prefs.getString('phone');
                        String? photo = prefs.getString('photo');
                        String? password = prefs.getString('password');

                        final DatabaseReference database =
                            FirebaseDatabase.instance.refFromURL(
                                "https://hiking-50cc0-default-rtdb.firebaseio.com/");

                        try {
                          database.child("users").push().set({
                            'name': name,
                            'gender': gender,
                            'age': age,
                            'phone':phone,
                            'email': email,

                            'photo': photo,
                            'password': password,
                          }).catchError((error) {
                            print("Error saving data to Firebase: $error");
                          });
                        } catch (e) {
                          print("Exception: $e");
                        }
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationPage()),
                      );
                      },
                      child: Text('Save Data')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 400.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FutureBuilder(
                          future: getImageURL(), // Get the image URL from Firebase Storage
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.done) {
                              return CircleAvatar(
                                radius: 60.0,
                                backgroundImage: NetworkImage(snapshot.data!),
                              );
                            } else if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else {
                              return CircularProgressIndicator();
                            }
                          },
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'User\'s Name',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 32.0),
                        SizedBox(height: 32.0),
                        Text(
                          'Feel Free to Check Our Activities',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Categories()),
                            );
                          },
                          child: Text('Let\'s Get Started'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<String> getImageURL() async {
  SharedPreferences prefs =
                            await SharedPreferences.getInstance();


                        String? phone = prefs.getString('phone');
    // Replace 'your_image_path.jpg' with the actual path to your image in Firebase Storage.
    firebase_storage.Reference ref =
        firebase_storage.FirebaseStorage.instance.ref().child('images/$phone.jpg');
    return await ref.getDownloadURL();
  }
}
