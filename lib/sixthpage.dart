import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'booking.dart';

class SixthPage extends StatefulWidget {
  SixthPage({Key? key, required this.choice}) : super(key: key);
  final dynamic choice;
  @override
  _SixthPageState createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  RangeValues _values = RangeValues(0, 30);
  int _currentIndex = 0;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  num total = 0;
  int vals = 0;
  Future<void> _selectDate(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? currentDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay currentTime = TimeOfDay.now();
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? currentTime,
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  void updateTotal() {
    setState(() {
      vals = _values.end.round() - _values.start.round();
      total = vals * widget.choice.money;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        title:  Column(
                  children: [
                    Text(
                      "${widget.choice.title}",
                       style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${widget.choice.title}'
                      '/'
                      '${widget.choice.district}',
                      style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background/cartoon4.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.1),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding(
              //   padding: EdgeInsets.all(16.0),
              //   child: Column(
              //     children: [
              //       Text(
              //         "${widget.choice.title}",
              //         style: TextStyle(
              //             fontSize: 24.0, fontWeight: FontWeight.bold),
              //       ),
              //       Text(
              //         '${widget.choice.title}'
              //         '/'
              //         '${widget.choice.district}',
              //         style: TextStyle(
              //           color: Colors.black,
              //           decoration: TextDecoration.none,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(21, 127, 123, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Text(selectedDate == null
                        ? 'Select Date'
                        : DateFormat('yyyy-MM-dd').format(selectedDate!)),
                  ),
                  ElevatedButton(
                    onPressed: () => _selectTime(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(21, 127, 123, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Text(selectedTime == null
                        ? 'Select Time'
                        : selectedTime!.format(context)),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Choose Your Group Number"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${_values.start.round()}'),
                  Expanded(
                    child: RangeSlider(
                      activeColor: Color.fromRGBO(21, 127, 123, 1),
                      values: _values,
                      min: 0,
                      max: 30,
                      onChanged: (RangeValues newValues) {
                        setState(() {
                          _values = newValues;
                        });

                        print(
                            'Slider Value: ${_values.end.round() - _values.start.round() * widget.choice.money}');
                        updateTotal();
                      },
                    ),
                  ),
                  Text(' ${_values.end.round()}'),
                ],
              ),
              Row(
                children: [
                  Text("Price", style: TextStyle(fontSize: 18.0)),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Per Person", style: TextStyle(fontSize: 18.0)),
                    Text('${widget.choice.money}' 'rs',
                        style: TextStyle(fontSize: 18.0)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: TextStyle(fontSize: 18.0)),
                    Text("$total", style: TextStyle(fontSize: 18.0)),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SuccessfullyBookedPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor: Color.fromRGBO(21, 127, 123, 1),
                  minimumSize: const Size.fromHeight(50),
                ),
                child: Text('CONFIRM'),
              ),
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
      //       icon: Icon(Icons.home), // Home icon
      //       label: 'Home', // Tab label
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite), // Favorite icon
      //       label: 'Favorite',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.send), // Request icon
      //       label: 'Request',
      //     ),
      //   ],
      // ),
    );
  }
}
