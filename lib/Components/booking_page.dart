// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:nairobitravel_app/Components/success_booked.dart';

class BookingPage extends StatefulWidget{
  BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState () => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  
CalendarFormat _format = CalendarFormat.month;
DateTime _focusDay= DateTime.now();
DateTime _currentDay= DateTime.now();
int? _currentIndex;
bool _dateSelected=false;
bool _timeSelected=false;
@override
Widget build(BuildContext context){
  // Config().init(context);
  return Scaffold(
    appBar: AppBar(
        leading: IconButton(onPressed: (){}, 
        icon: Icon(Icons.arrow_back, color: Color.fromRGBO(83, 175, 50, 1),)
        ),
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                // display calendar here
                _tableCalendar(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: Center(
                    child: Text('Select Time',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  ),
                  ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return InkWell(
                onTap: (){
                  setState(() {
                    _currentIndex = index;
                    _timeSelected= true;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _currentIndex == index
                      ? Colors.white
                      : Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: _currentIndex == index
                    ? Color.fromRGBO(83, 175, 50, 1)
                    : null
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${index + 9}:00 ${index +9>11? 'PM' : 'AM'}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: _currentIndex == index? Colors.white : null,
                    ),
                  ),
                ),
              );
            },
            childCount: 8,  
            ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1.5
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    if (_timeSelected && _dateSelected){
                    } else {
                      return null;
                    }
                  });
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => SuccessBooked(),));
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(83, 175, 50, 1),
                  // disabledBackgroundColor: Colors.grey,
                  // disabledForegroundColor: const Color.fromARGB(66, 33, 33, 33),
                ),
                child: Text('Book Now')),
            ),
          ),
        ],
      ),
  );
}
 
//  table calendar
Widget _tableCalendar(){
  return TableCalendar(
    focusedDay: _focusDay, 
    firstDay: DateTime.now(), 
    lastDay: DateTime(2024, 12, 31),
    calendarFormat: _format,
    currentDay: _currentDay,
    rowHeight: 48,
    calendarStyle: const CalendarStyle(
      todayDecoration: 
      BoxDecoration(
        color: Color.fromRGBO(83, 175, 50, 1),
        shape: BoxShape.circle
      ),
    ),
    availableCalendarFormats: const{
      CalendarFormat.month:'Month',
    },
    onFormatChanged: (format){
      setState(() {
        _format= format;
      });
    },
    onDaySelected: (((selectedDay, focusedDay) {
      setState(() {
        _currentDay=selectedDay;
        _focusDay=focusedDay;
        _dateSelected=true;
      });
    })

    ),
    );
}
}