import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Application',
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
              const PopupMenuItem(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
            ],
            onSelected: (value) {
              // Handle the menu item selection here
              switch (value) {
                case 'Option 1':
                  // Handle option 1 action
                  break;
                case 'Option 2':
                  // Handle option 2 action
                  break;
                // Add more cases for other menu items if needed
              }
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.update),
          label: 'Update',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.recent_actors),
          label: 'Recent',
        ),
      ]),
      backgroundColor: const Color.fromARGB(255, 176, 199, 234),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('asset/vector.jpg'), // Fixed the asset path here
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/demo1.png', // Fixed the asset path here
            ),
            const SizedBox(height: 7),
            const Text(
              'FLUTTER',
              style: TextStyle(
                color: Color.fromARGB(255, 12, 5, 5),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
