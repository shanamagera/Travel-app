import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/booking_page.dart';


class NairobiNationalParkScreen extends StatefulWidget{
  @override
  State<NairobiNationalParkScreen> createState() => _NairobiNationalParkScreenState();
}

class _NairobiNationalParkScreenState extends State<NairobiNationalParkScreen> {
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
                image: DecorationImage(image: AssetImage('assets/images/Login.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Column(
                  children:[
                    Text('Nairobi National Park',
                       style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 40
                  ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                      children: List.generate(5, (index){
                        return Icon(Icons.star,
                        color: Color.fromRGBO(255, 230, 5, 1),
                        );
                      }
                                      ),
                                      ),
                    ),
                  ],
                ),
              ),
            
             ],
          ),
          SizedBox(height: 20),
          Text('A must visit if you’re in Nairobi. It is a unique protected area',
          textAlign: TextAlign.left,
          ),
          Text('located just outside the bustling city of Nairobi, Kenya. It is',
          textAlign: TextAlign.left,
          ),
          Text('the only national park in the world located within a capital',
          textAlign: TextAlign.left,
          ),
          Text('city.The park covers an area of approximately 117 square',
          textAlign: TextAlign.left,
          ),
          Text(' kilometers, and is home to a wide range of wildlife, including',
          textAlign: TextAlign.start,
          ),
          Text('lions, leopards, cheetahs, giraffes, buffaloes, zebras,',
          textAlign: TextAlign.left,
          ),
          Text(' and more than 400 species of birds.',
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
              Text('6 am - 6.30 pm',
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
                  child: Text('\$60.00',
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