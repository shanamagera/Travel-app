import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/side_bar.dart';
import 'package:nairobitravel_app/Screens/attractions_screen.dart';
import 'package:nairobitravel_app/Screens/activities_screen.dart';
import 'package:nairobitravel_app/Screens/home_screen.dart';


class RestaurantsScreen extends StatefulWidget{
  const RestaurantsScreen({
    Key? key,
  }) : super(key:key);

  //  static const routeName='/activities';
  @override
State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}
class _RestaurantsScreenState extends State<RestaurantsScreen> {
  _onPressed(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }
  int _currentIndex= 2;

  final List<Widget> _children = [
    AttractionsScreen(),
    ActivitiesScreen(),
     const RestaurantsScreen()
  ];
  @override
  Widget build(BuildContext context){
    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;

    return Container(
      child: Row(
        children: [
          SideBar(height: height, width: width),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical:0),
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Material(
                    child: Row(
                      children:[
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).pop(MaterialPageRoute(builder:(context) => HomeScreen(),));
                      }, 
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black,
                      iconSize: 30,
                      ),
                    Text('Restaurants', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold)),
                      ],),
                  ),
                  Text('Here are some of our top picks for our fave', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                  Text('Nairobi restaurants where you can choose .', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                  Text('from a variety of different authentic cuisines', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),

                  SizedBox(height: 20),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Container(
                                width:152,
                                height: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/nsk.jpg'), fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                  ),
                                  ),
                                  ],
                                  ),
                      SizedBox(width: 10),
                      Column(
                        children:[
                          GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Container(
                                width:152,
                                height: 200,
                                decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/jiko.jpg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                             ),
                          SizedBox(height: 10),
                          Text('Jiko',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.justify, overflow: TextOverflow.ellipsis, maxLines: 2),
                            ],
                           ), 
                          ],
                      ), 
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children:[
                          Text('Nairobi Street Kitchen', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Container(
                                width:152,
                                height: 200,
                                decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/mama rocks.jpeg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                               ),
                              ),
                          Text('Mama-Rocks', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                            ],
                            ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          print('printed');
                        },
                        child: Container(
                          width:152,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/kilimanjaro.jpg'), fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                        ),
                      ),   
                      ],
                    ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('printed');
                               },
                               child: Container(
                                width:152,
                                height: 250,
                                decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/mama-oliech.jpg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      ),
                                                    ),
                                               ),
                          Text('Mama Oliech', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                             ],
                           ),
                          SizedBox(width: 10),
                      Column(
                        children:[
                          Text('Kilimanjaro', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Container(
                                width:152,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/habesha.jpg'), fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                 ),
                               ),
                          SizedBox(height: 10),
                          Text('Habesha', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                              ],
                             ),
                            ],
                        ),
                    


                ],
              ),
            ),

          ),
        ],
      ),
    );
}
}