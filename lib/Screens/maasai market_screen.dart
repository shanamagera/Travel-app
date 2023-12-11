import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class MaasaiMarketScreen extends StatefulWidget{
  @override
  State<MaasaiMarketScreen> createState() => _MaasaiMarketScreenState();
}

class _MaasaiMarketScreenState extends State<MaasaiMarketScreen> {
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
                image: DecorationImage(image: AssetImage('assets/images/maasai-market.jpg'), fit: BoxFit.cover),
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
                    Text('Maasai Market',
                       style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 30
                  ),
                  ),
                    RatingBarIndicator(
                        rating: 4,
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
          Text('At these open-air markets travelers can find curios, paintings,',
          textAlign: TextAlign.left,
          ),
          Text('clothes, and fabrics with East African prints, jewelry, and wood',
          textAlign: TextAlign.left,
          ),
          Text('carvings,many hand-made in Kenya by local artisans. You can',
          textAlign: TextAlign.left,
          ),
          Text('buy all your souvenirs and gifts in one go, but get ready',
          textAlign: TextAlign.left,
          ),
          Text('for some serious bargaining. The market sells a wide',
          textAlign: TextAlign.start,
          ),
          Text('range of African antiques and has become a ',
          textAlign: TextAlign.left,
          ),
          Text('convergence zone for locals and tourists.',
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
              Text('8 am - 6 pm',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),),
            ],
          ),
          
        ],
      ),
      ),
    );
  }
  }