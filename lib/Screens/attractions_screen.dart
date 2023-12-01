import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/side_bar.dart';

class AttractionsScreen extends StatefulWidget{
  const AttractionsScreen({
    Key? key,
  }) : super(key:key);

  // static const routeName='/attractions';
  @override
State<AttractionsScreen> createState() => _AttractionsScreenState();
}
class _AttractionsScreenState extends State<AttractionsScreen> {
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
                  Text('Attractions', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold)),
                  Text('Book these experiences for a close-up', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                  Text('look at Nairobi.', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
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
                                  image: DecorationImage(image: AssetImage('assets/images/nairobi-national-park.jpg'), fit: BoxFit.cover),
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
                                image: DecorationImage(image: AssetImage('assets/images/giraffe center.jpeg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                             ),
                          SizedBox(height: 10),
                          Text('Giraffe center',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
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
                          Text('Nairobi National Park', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          Text('/Animal Orphanage', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Container(
                                width:152,
                                height: 200,
                                decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/nairobi national museum.png'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                               ),
                              ),
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
                            image: DecorationImage(image: AssetImage('assets/images/mamba village.jpeg'), fit: BoxFit.cover),
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
                                image: DecorationImage(image: AssetImage('assets/images/elephant sanctuary.jpeg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      ),
                                                    ),
                                               ),
                             ],
                           ),
                          SizedBox(width: 10),
                      Column(
                        children:[
                          Text('Mamba Village', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Container(
                                width:152,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/KICC.jpg'), fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                 ),
                               ),
                          SizedBox(height: 10),
                          Text('The Kenyatta', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          Text('International', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          Text('Convention Center', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                          Text('(KICC)', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
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