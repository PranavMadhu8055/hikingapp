import 'package:flutter/material.dart';
import 'sixthpage.dart';
import 'map.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key, required this.choice}) : super(key: key);
  final choice;

  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  String? backgroundImage;

  final List<AvatarData> avatars = [
    AvatarData(
      name: 'John Doe',
      details: 'Designer',
      avatarUrl: 'https://example.com/avatar1.jpg',
    ),
    AvatarData(
      name: 'Jane Smith',
      details: 'Developer',
      avatarUrl: 'https://example.com/avatar2.jpg',
    ),
    AvatarData(
      name: 'Alice Johnson',
      details: 'Product Manager',
      avatarUrl: 'https://example.com/avatar3.jpg',
    ),
  ];

  @override
  void initState() {
    super.initState();
    backgroundImage = widget.choice.imagepath;
  }

  void changeBackgroundImage(int newIndex) {
    setState(() {
      if (newIndex >= 0 && newIndex < widget.choice.features.length) {
        backgroundImage = widget.choice.features[newIndex];
      }
    });
  }

  Widget build(BuildContext context) {
     final List<AvatarData> avatars = [
    AvatarData(
      name: 'John Doe',
      details: 'Designer',
      avatarUrl: 'assets/avatar/1.jpg',
    ),
    AvatarData(
      name: 'Jane Smith',
      details: 'Developer',
      avatarUrl: 'assets/avatar/2.jpg',
    ),
    AvatarData(
      name: 'Alice Johnson',
      details: 'Product Manager',
      avatarUrl: 'assets/avatar/3.jpg',
    ),
  ];


    return Scaffold(
      extendBodyBehindAppBar: true,
       appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 250, // Set a fixed height for the PageView
                child: PageView.builder(
                  itemCount: widget.choice.features.length,
                  onPageChanged: changeBackgroundImage,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        // color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage(widget.choice.features[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.choice.title,
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.share),
                                    Icon(Icons.favorite),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '${widget.choice.title}'
                                  '/'
                                  '${widget.choice.district}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Color.fromRGBO(21, 127, 123, 1),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                'date',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                'difficulty',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                '5 May',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                'Medium',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Distance',
                                      style: TextStyle(
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Text(
                                      '10 Km',
                                      style: TextStyle(
                                          color: Colors.white,
                                          decoration: TextDecoration.none,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                'date',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                'weather',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                '10 Km',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                'Sunny',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Description",
                                  style: TextStyle(
                                      color: Color.fromRGBO(21, 127, 123, 1),
                                      decoration: TextDecoration.none,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    widget.choice.description,
                                    style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          GestureDetector(
  onTap: () {
  
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Map()),
            );
  },
  child: Container(
    height: 180,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/background/map.jpg"),
        fit: BoxFit.cover,
      ),
    ),
  ),
)

                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                color: Color.fromRGBO(21, 127, 123, 1),
                                elevation: 5.0,
                                child: SizedBox(
                                  width: 250,
                                  height: 250,
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'It would be good to wear:',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10.0),
                                        Text(
                                          widget.choice.wear!,
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                color: Color.fromRGBO(21, 127, 123, 1),
                                elevation: 5.0,
                                child: SizedBox(
                                  width: 250,
                                  height: 250,
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'It would be good to know:',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10.0),
                                        Text(
                                          widget.choice.about!,
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Here is the activity Organiser",
                              style: TextStyle(
                                  color: Color.fromRGBO(21, 127, 123, 1),
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Container(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemCount: avatars.length,
                            itemBuilder: (context, index) {
                              final avatar = avatars[index];
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: CircleAvatar(
                                        radius: 40.0,
                                        backgroundImage:
                                            AssetImage(avatar.avatarUrl),
                                      ),
                                    ),
                                    SizedBox(height: 4.0),
                                    Text(
                                      avatar.name,
                                      style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      avatar.details,
                                      style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Price",
                             style: TextStyle(
                                  color: Color.fromRGBO(21, 127, 123, 1),
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text(
                              widget.choice.money.toString(),
                             style: TextStyle(
                                  color: Color.fromRGBO(21, 127, 123, 1),
                                  decoration: TextDecoration.none,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "/person",
                             style: TextStyle(
                                  color: Color.fromRGBO(21, 127, 123, 1),
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SixthPage(choice: widget.choice)),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            minimumSize: const Size.fromHeight(50),
                          ),
                          child: Text('BOOK NOW'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarData {
  final String name;
  final String details;
  final String avatarUrl;

  AvatarData({
    required this.name,
    required this.details,
    required this.avatarUrl,
  });
}
