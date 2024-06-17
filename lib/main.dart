import 'package:flutter/material.dart';

void main() {
  runApp(HotelApp());
}
class Hotel {
  String name;
  int rating;
  String description;
  int price;
  String image;

  Hotel(
    {
      required this.name,
      required this.rating,
      required this.description,
      required this.price,
      required this.image,
    }
  );
}

class HotelApp extends StatelessWidget {
  HotelApp({super.key});

  List<Hotel> hotels = [

  Hotel(
    name: 'Hotel App 1',
    price: 1000,
    description: 'wifi include',
    rating: 3,
    image: 'images/hotel1.jpg',
  ),

     
  Hotel(
    name: 'Hotel App 2',
    price: 1000,
    description: 'wifi include',
    rating: 3,
    image: 'images/hotel2.jpg',
  ),

     
  Hotel(
    name: 'Hotel App 3',
    price: 1000,
    description: 'wifi include',
    rating: 3,
    image: 'images/hotel3.jpg',
  ),

     
  Hotel(
    name: 'Hotel App 4',
    price: 1000,
    description: 'wifi include',
    rating: 3,
    image: 'images/hotel4.jpg',
  ),

     
  Hotel(
    name: 'Hotel App 5',
    price: 1000,
    description: 'wifi include',
    rating: 3,
    image: 'images/hotel5.jpg',
  ),

     
  Hotel(
    name: 'Hotel App 6',
    price: 1000,
    description: 'wifi include',
    rating: 3,
    image: 'images/hotel6.jpg',
  ),

     
  Hotel(
    name: 'Hotel App 7',
    price: 1000,
    description: 'wifi include',
    rating: 3,
    image: 'images/hotel7.jpg',
  ),

  Hotel(
    name: 'Hotel App 7',
    price: 1000,
    description: 'wifi include',
    rating: 3,
    image: 'images/hotel8.jpg',
  ),
];

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotel App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'JI Hotel App',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          leading: const Icon(
            Icons.hotel_rounded,
            color: Colors.green,
          ),
          actions: const <Widget>[
            IconButton(onPressed: null, icon: Icon(Icons.people)),
            IconButton(onPressed: null, icon: Icon(Icons.money)),
            IconButton(onPressed: null, icon: Icon(Icons.star)),
          ],
        ),
        body: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: hotels.length,
          itemBuilder: (_, int index) {
            return InkWell(
              onTap: () {
                // Handle tap event
              },
              child: GridTile(
                child: Container(
                  color: Color.fromARGB(255, 234, 138, 205),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(hotels[index].image),
                      Text(hotels[index].name + 'Best JI'),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}