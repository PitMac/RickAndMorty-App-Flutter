import 'package:flutter/material.dart';

cardLWidget(context, character) {
  return Container(
    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
    child: InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detailL', arguments: character);
      },
      child: Card(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    character.name.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
