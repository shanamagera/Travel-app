import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/side_bar.dart';
import 'package:nairobitravel_app/Screens/attractions_screen.dart';
import 'package:nairobitravel_app/Screens/activities_screen.dart';
import 'package:nairobitravel_app/Screens/restaurants_screen.dart';
import 'package:nairobitravel_app/Screens/home_screen.dart';


class CultureScreen extends StatefulWidget{
  const CultureScreen({
    Key? key,
  }) : super(key:key);

  //  static const routeName='/activities';
  @override
State<CultureScreen> createState() => _CultureScreenState();
}
class _CultureScreenState extends State<CultureScreen> {
  _onPressed(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }
  int _currentIndex= 3;

  final List<Widget> _children = [
    AttractionsScreen(),
    ActivitiesScreen(),
    RestaurantsScreen(),
    const CultureScreen()
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
                    Text('Culture', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold)),
                      ],),
                  ),
                  Text('Nairobi City is one of the great places', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                  Text('to visit if you are seeking to learn', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                  Text('more about the beautiful Kenyan culture.', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),

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
                                  image: DecorationImage(image: AssetImage('assets/images/art-gallery.jpg'), fit: BoxFit.cover),
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
                                image: DecorationImage(image: AssetImage('assets/images/maasai-market.jpg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                             ),
                          SizedBox(height: 10),
                          Text('Maasai Market',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
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
                          Text('Art Gallery', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Container(
                                width:152,
                                height: 200,
                                decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/national archives.jpg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                               ),
                              ),
                          Text('National Archives', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
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
                            image: DecorationImage(image: AssetImage('assets/images/bomas.jpg'), fit: BoxFit.cover),
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
                                image: DecorationImage(image: AssetImage('assets/images/kazuri.jpg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      ),
                                                    ),
                                               ),
                          Text('Kazuri Beads', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          Text('Factory',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                             ],
                           ),
                          SizedBox(width: 10),
                      Column(
                        children:[
                          Text('The Bomas', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          Text('of Kenya',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Container(
                                width:152,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/Nairobi-Railway-Museum.jpg'), fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                 ),
                               ),
                          SizedBox(height: 10),
                          Text('Kenya Railways', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          Text('Museum',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
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