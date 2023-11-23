import 'package:flutter/material.dart';
import 'fifthpage.dart';
import 'hikingtips.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key, required this.id}) : super(key: key);
  final id;

  @override
  _FourthScreenState createState() => _FourthScreenState(id: id);
}

class PlaceChoice {
  const PlaceChoice(
      {this.id,
      this.title,
      this.description,
      this.imagepath,
      this.money,
       this.district,
      this.about,
      this.wear,
      this.features});
  final int? id;
  final String? title;
    final String? district;
  final String? description;
  final String? imagepath;
  final int? money;
  final String? about;
  final String? wear;
  final List<String>? features;
}

const List<PlaceChoice> HikingPlaceChoices = const <PlaceChoice>[
  const PlaceChoice(
    id: 1,
    title: 'Roopkund Trek',
    district:'Uttarakhand',
    description:
        'Located in Uttarakhand, this trek takes you to a glacial lake surrounded by stunning peaks. Its known for its mystery with human skeletons at the lakes bottom.',
    money: 600,
    about: 'A hugely popular food,with a deliciously tangy cheese top',
    wear: 'A hugely popular food,with a deliciously tangy cheese top',
    imagepath: 'assets/images/hiking/roopkund.jpg',
    features: [
      'assets/images/hiking/roopkund/roopkund1.jpg',
      'assets/images/hiking/roopkund/roopkund2.jpg',
      'assets/images/hiking/roopkund/roopkund3.jpg',
      'assets/images/hiking/roopkund/roopkund4.jpg'
    ],
  ),
  const PlaceChoice(
      id: 2,
      title: 'Great Lakes Trek',
      district:'Uttarakhand',
      description:
          'In the heart of the Eastern Himalayas, this trek offers stunning views of Kanchenjunga, the worlds third-highest peak.',
      money: 500,
      about: 'A hugely popular food,with a deliciously tangy cheese top',
      wear: 'A hugely popular food,with a deliciously tangy cheese top',

      imagepath: 'assets/images/hiking/greatlakes.jpg',
      features: [
        'assets/images/hiking/greatlakes/greatlakes1.jpg',
        'assets/images/hiking/greatlakes/greatlakes2.jpg',
        'assets/images/hiking/greatlakes/greatlakes3.jpg',
        'assets/images/hiking/greatlakes/greatlakes4.jpg'
      ]
      ),
  const PlaceChoice(
      id: 3,
      title: 'Valley of Flowers',
      district:'Uttarakhand',
      description:
          'Uttarakhand, this UNESCO World Heritage site is a trek through a vibrant, flower-covered valley in the Garhwal region.',
      money: 1000,
      about: 'A hugely popular food,with a deliciously tangy cheese top',
      wear: 'A hugely popular food,with a deliciously tangy cheese top',

      imagepath: 'assets/images/hiking/valleyofflowers.jpg',
      features: [
        'assets/images/hiking/valleyofflower/valleyofflower1.jpg',
        'assets/images/hiking/valleyofflower/valleyofflower2.jpg',
        'assets/images/hiking/valleyofflower/valleyofflower3.jpg',
        'assets/images/hiking/valleyofflower/valleyofflower4.jpg'
      ]
      ),
  const PlaceChoice(
      id: 4,
      title: 'Araku Valley Trek',
      district:'Uttarakhand',
      description:
          'In Andhra Pradesh, this trek offers a unique experience with coffee plantations and lush landscapes.',
      money: 150,
      about: 'A hugely popular food,with a deliciously tangy cheese top',
      wear: 'A hugely popular food,with a deliciously tangy cheese top',

      imagepath: 'assets/images/hiking/arakuvalley.jpg',
            features: [
        'assets/images/hiking/arakuvalley/arakuvalley1.jpg',
        'assets/images/hiking/arakuvalley/arakuvalley2.jpg',
        'assets/images/hiking/arakuvalley/arakuvalley3.jpg',
        'assets/images/hiking/arakuvalley/arakuvalley4.jpg'
      ]
      ),
];

const List<PlaceChoice> ClimbingPlaceChoices = const <PlaceChoice>[
  const PlaceChoice(
      id: 5,
      title: 'Hampi, Karnataka',
      district:'Uttarakhand',
      description:
          'Known for its unique bouldering opportunities, the granite rock formations in Hampi provide a challenging and picturesque backdrop for climbers.',
      money: 700,
      about: 'A hugely popular food,with a deliciously tangy cheese top',
      wear: 'A hugely popular food,with a deliciously tangy cheese top',

      imagepath: 'assets/images/climbing/hampi.jpg',
      features: []),
  const PlaceChoice(
      id: 6,
      title: 'Badami, Karnataka',
      district:'Uttarakhand',
      description:
          'Another bouldering and rock climbing haven in Karnataka, Badami is famous for its red sandstone cliffs and a range of climbing routes for all levels.',
      money: 550,
      about: 'A hugely popular food,with a deliciously tangy cheese top',
      wear: 'A hugely popular food,with a deliciously tangy cheese top',

      imagepath: 'assets/images/climbing/badami.jpg',
      features: []),
  const PlaceChoice(
      id: 7,
      title: 'Shey Rock, Ladakh',
      district:'Uttarakhand',
      description:
          'Situated in the breathtaking region of Ladakh, Shey Rock offers excellent alpine climbing, rock climbing, and bouldering experiences with a high-altitude twist.',
      money: 950,
      about: 'A hugely popular food,with a deliciously tangy cheese top',
      wear: 'A hugely popular food,with a deliciously tangy cheese top',

      imagepath: 'assets/images/climbing/sheyrocks.jpg',
      features: []),
];

const List<PlaceChoice> CampingPlaceChoices = const <PlaceChoice>[
  const PlaceChoice(
      id: 8,
      title: 'Rishikesh, Uttarakhand',
      district:'Uttarakhand',
      description:
          'Camp along the banks of the Ganges River in Rishikesh and enjoy a mix of adventure activities, yoga retreats, and serene natural beauty.',
      money: 1000,
      about: 'A hugely popular food,with a deliciously tangy cheese top',
      wear: 'A hugely popular food,with a deliciously tangy cheese top',

      imagepath: 'assets/images/camping/rishikesh.jpg',
      features: []),
  const PlaceChoice(
      id: 9,
      title: 'Manali, Himachal Pradesh',
      district:'Uttarakhand',
      description:
          'Manali and its surroundings offer numerous camping options with views of the Himalayan peaks and pristine rivers.',
      money: 1250,
      about: 'A hugely popular food,with a deliciously tangy cheese top',
      wear: 'A hugely popular food,with a deliciously tangy cheese top',

      imagepath: 'assets/images/camping/manali.jpg',
      features: []),
];

class _FourthScreenState extends State<FourthScreen> {
  int _currentIndex = 0;
  final int id; // Declare id as a member variable in _FourthScreenState
  List<PlaceChoice> selectedChoices = [];
  int?tipsid;
  String? tips;
  String? tipspath;
  _FourthScreenState({required this.id}); // Initialize id in the constructor
  @override
  Widget build(BuildContext context) {
    if (id == 1) {
      tips = 'Camping';
      tipspath='assets/images/camping/manali.jpg';
      tipsid=1;
      selectedChoices = CampingPlaceChoices;
    } else if (id == 2) {
      tips = 'Climbing';
      tipsid=2;
       tipspath='assets/images/climbing/sheyrocks.jpg';
      selectedChoices = ClimbingPlaceChoices;
    } else if (id == 3) {
      tips = 'Hiking';
      tipsid=3;
       tipspath='assets/images/hiking/arakuvalley.jpg';
      selectedChoices = HikingPlaceChoices;
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
       appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
            decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/background/cartoon3.jpg"),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(
      Colors.black.withOpacity(0.2),
      BlendMode.dstATop,
    ),
  ),
),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Recommended Places',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: selectedChoices.length,
                    itemBuilder: (BuildContext context, int index) {
                      return
                          // CardWithRoundedEdges(
                          //   selectedChoices: selectedChoices[index],
                          // );
      
                          InkWell(
                        onTap: () {
                          // Navigate to the second page with the index when the card is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FifthPage(
                                  choice: selectedChoices[
                                      index]), // Pass the index to SecondScreen
                            ),
                          );
                        },
                        child: Container(
                          width: 150,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image:
                                    AssetImage(selectedChoices[index].imagepath!),
                                fit: BoxFit.cover),
      
                            // image: AssetImage("assets/background/bg.jpg"),
                            // color: Colors.blue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Text(
                                '${selectedChoices[index].title}',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '$tips Tips',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HikingTips(tipsid:tipsid)),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 200,
                    width: 150,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
        image: AssetImage(tipspath!),
        fit: BoxFit.cover, // You can adjust this to control the image fit
          ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          'Card',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: 'Favorites',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.send),
      //       label: 'Requests',
      //     ),
      //   ],
      // ),
    );
  }
}

































// class CardList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: 5,
//       itemBuilder: (BuildContext context, int index) {
//         return CardWithRoundedEdges(
//           index: index,
//         );
//       },
//     );
//   }
// }

// class CardWithRoundedEdges extends StatelessWidget {
//   final List<PlaceChoice> selectedChoices; // Add an index property to the widget

//   CardWithRoundedEdges(
//       {required this.selectedChoices}); // Constructor to initialize the index

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // Navigate to the second page with the index when the card is tapped
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) =>
//                 ContainerExample(), // Pass the index to SecondScreen
//           ),
//         );
//       },
//       child: Container(
//         width: 150,
//         margin: EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           color: Colors.blue,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Center(
//             child: Text(
//               'Card $index',
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   final int index; // Add an index property to the widget

//   SecondScreen({required this.index}); // Constructor to initialize the index

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//id:,         
//title: Text('Second Page'),
//       ),
//       body: Center(
//         child: Text('This is card number $index on the second page.'),
//       ),
//     );
//   }
// }