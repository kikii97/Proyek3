import 'package:flutter/material.dart';
import 'standar1.dart'; // Import file standar1.dart

void main() => runApp(AppKu());

class AppKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Kost Milikmu!',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              Text(
                'Segera Perbanyak Kos Milikmu',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListKos(),
      ),
    );
  }
}

class ListKos extends StatelessWidget {
  final List<String> kosImages = [
    'assets/kos1.jpg',
    'assets/kos2.jpg',
    'assets/kos3.jpg',
  ];

  final List<Map<String, String>> kosDescriptions = [
    {
      'smallText': 'Kamar Standar, single bed',
      'title': 'Kos Arliana',
      'address': 'Jalan Legok, Lohbener, Indramayu',
      'price': '550rb/bln',
      'rating': '4.2',
    },
    {
      'smallText': 'Kamar Standar, double bed',
      'title': 'Kos Arliana',
      'address': 'Jalan Legok, Lohbener, Indramayu',
      'price': '600rb/bln',
      'rating': '3.5',
    },
    {
      'smallText': 'Kamar Eksklusif, double bed',
      'title': 'Kos Arliana',
      'address': 'Jalan Legok, Lohbener, Indramayu',
      'price': '1jt/bln',
      'rating': '4.0',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kosImages.length,
      itemBuilder: (context, index) {
        return Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Standart()), 
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              width: 430,  
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      child: Image.asset(
                        kosImages[index],
                        width: double.infinity,
                        height: 230,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kosDescriptions[index]['smallText']!,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.green,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              kosDescriptions[index]['title']!,
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              kosDescriptions[index]['price']!,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                kosDescriptions[index]['address']!,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black54,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 16.0),
                                SizedBox(width: 5.0),
                                Text(
                                  kosDescriptions[index]['rating']!,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
