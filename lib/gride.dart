
import 'package:flutter/material.dart';

class Gride_view extends StatefulWidget {
  const Gride_view({Key? key}) : super(key: key);

  @override
  State<Gride_view> createState() => _Gride_viewState();
}

class _Gride_viewState extends State<Gride_view> {
  List image=[
    'images/1.jpg','images/2.jpg','images/3.jpg','images/4.jpg',
    'images/5.jpg','images/6.jpg','images/7.jpg','images/8.jpg'
  ];
  List place=['Philippines','Italy','Somewhere','A place','New Zealand','Autumn','New Zealand','Autumn'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          itemCount: image.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0
            ),
            itemBuilder: (BuildContext context, int index){
              return GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(place[index]),
                  subtitle: Text('Batad rice terraces'),
                  trailing: Icon(Icons.grade_outlined),
                ),
                  child: Image.asset(image[index])
              );
            },
        )
      ),
    );
  }
}
