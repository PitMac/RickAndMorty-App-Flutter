import 'package:flutter/material.dart';

cardWidget(BuildContext context, character) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
    child: InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detail', arguments: character);
      },
      child: Card(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Hero(
                    tag: character.id,
                    child: Image.network(
                      character.image,
                      height: 140,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
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
