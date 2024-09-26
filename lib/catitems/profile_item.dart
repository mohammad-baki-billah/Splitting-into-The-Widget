import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        flex: 5,
        child: Container(
          color: Colors.red,
          child: ListView.builder(
            itemBuilder: (context, index) => SizedBox(
              width: 100,
              height: 75,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
