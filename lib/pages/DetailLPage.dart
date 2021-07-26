import 'package:flutter/material.dart';
import 'package:rickandmorty_app/models/LocationModel.dart';

class DetailLPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Result;
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.green),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'Dimension: ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data.dimension,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'Type: ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data.type,
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
        ),
      ),
    );
  }
}
