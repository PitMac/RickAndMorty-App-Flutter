import 'package:flutter/material.dart';
import 'package:rickandmorty_app/models/CharactersModel.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Result;
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Hero(
                tag: data.id,
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: NetworkImage(data.image),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, right: 10, left: 10),
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.green),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Status: ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data.status,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Species: ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data.species,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Gender: ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data.gender,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
