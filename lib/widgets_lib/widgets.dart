import 'package:flutter/material.dart';

import '../models/library_model.dart';

Widget createCards(item) {
  if (item is Author) {
    return Card(
        child: Container(
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Text(
                "${(item.key).toString()} -> Name: ${item.name} ${item.surname}"),
          )
        ],
      ),
    ));
  }
  return Card();
}

Widget detailDialog(item) {
  if (item is Author) {
    return Dialog(
      child: Column(
        children: [
          Text("ID: ${(item.key).toString()}"),
          Text("Name: ${item.name}"),
          Text("Surname: ${item.surname}")
        ],
      ),
    );
  }
  return Dialog();
}
