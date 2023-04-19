import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  FoodItem(
      {Key? key,
      required this.id,
      required this.title,
      required this.ImageURL,
      required this.duration})
      : super(key: key);

  String title;
  String id;
  int duration;
  String ImageURL;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        trailing: Icon(Icons.favorite_border),
        subtitle: Text("${duration} min"),
        title: Text(title),
        leading: CircleAvatar(
          child: Container(
              decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(ImageURL), fit: BoxFit.cover),
          )),
        ));
  }
}
