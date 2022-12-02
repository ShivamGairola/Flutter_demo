import 'package:flutter/material.dart';

// using this you choose to display number of items in a list.
const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using the code below you can make a list view
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          //title: Text('Item'),
          // To give it an index use:
          title: Text('Item ${(index + 1)}'),
          // To put icon before the item use:
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.select_all),
          // To give functionality use onTap function. 'onTop' triggers a function
          onTap: () {
            debugPrint('Item ${(index + 1)} Selected');
          },
        );
      },
    );
  }
}
