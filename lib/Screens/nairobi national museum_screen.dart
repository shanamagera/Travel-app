import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/booking_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nairobitravel_app/Screens/attractions_screen.dart';


class NairobiNationalMuseumScreen extends StatefulWidget{
  @override
  State<NairobiNationalMuseumScreen> createState() => _NairobiNationalMuseumScreenState();
}

class _NairobiNationalMuseumScreenState extends State<NairobiNationalMuseumScreen> {
  bool isPressed=false;
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/nairobi national museum.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
            ),
              IconButton(
                      onPressed: (){
                        Navigator.of(context).pop(MaterialPageRoute(builder:(context) => AttractionsScreen(),));
                      }, 
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      iconSize: 30,
                      ),
              Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Column(
                  children:[
                    Text('Nairobi National Museum',
                       style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 30
                  ),
                  ),
                    RatingBarIndicator(
                        rating: 4.5,
                        itemCount: 5,
                        itemSize: 30,
                        direction: Axis.horizontal,
                        unratedColor: Colors.white,
                        itemPadding: EdgeInsets.only(left: 5),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color.fromRGBO(255, 230, 5, 1)
                        ),
                        ),
                    
                  ],
                ),
              ),
            
             ],
          ),
          SizedBox(height: 20),
          Text('The museum showcases the rich Heritage of Kenya with four distinct',
          textAlign: TextAlign.left,
          ),
          Text('themes representing the Culture, Nature, History and Contemporary',
          textAlign: TextAlign.left,
          ),
          Text('Art of Kenya. Other attractions within the compound include the',
          textAlign: TextAlign.left,
          ),
          Text('Snake Park and Botanical Gardens as well as a State of the',
          textAlign: TextAlign.left,
          ),
          Text('Art Auditorium that occasionally hosts concerts, film',
          textAlign: TextAlign.start,
          ),
          Text('shows and other events.Dining and shopping facilities',
          textAlign: TextAlign.left,
          ),
          Text('await you after your tour with us in our commercial',
          textAlign: TextAlign.left,
          ),
          Text('wing.',
          textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.calendar_month_outlined,
              color: Color.fromRGBO(83, 175, 50, 0.7),
              size: 60,
              ),
              SizedBox(width: 10),
              Text('Everyday',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.access_time_outlined,
              color: Color.fromRGBO(83, 175, 50, 0.7),
              size: 60,
              ),
              SizedBox(width: 10),
              Text('8 am - 6.30 pm',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 5),
              OutlinedButton(
                style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Color.fromRGBO(83, 175, 50, 0.7),
                  )),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(20),
                        )),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(
                        horizontal: 30,
                        )),
                  ),
                  onPressed: (){}, 
                  child: Text('\$50.00',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(83, 175, 50, 0.7),
                  ),
                  ),
                  ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => BookingPage(),));
                },
                style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(83, 175, 50, 1),
                      padding: EdgeInsets.symmetric(horizontal: 50),
                    ),
                    child: Text('Book',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    ),
                    ),
                    SizedBox(width: 20),
            ],
          ),
        ],
      ),
      ),
    );
  }
  }