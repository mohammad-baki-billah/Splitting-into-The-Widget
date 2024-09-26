import 'package:flutter/material.dart';
import 'package:splitting_the_widget/catitems/profile_item.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ProfileItem(),
          ),),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
              child: ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                  title: Text('Baki Billah'),
                  subtitle: Text('Flutter Developer'),
                  trailing: Icon(Icons.delete),
                ),
                itemCount: 10,
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.yellow,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                  ),
                ),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
