import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // Flutter is widget over widget and anything that us written in capital letter is widget.
  // In small letter it is argument.
  // using ctrl + spacebar it gives all the option of arguement. (Arguement start with small letter)
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const RootPage(),
    ); // MaterialApp used to access all the themes inside the app
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [HomePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp'),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating action Button');
        },
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          //NavigationDestination(
          //  icon: Icon(Icons.groups_sharp), label: 'Communities'),
          //NavigationDestination(icon: Icon(Icons.chat_outlined), label: 'Chat'),
          //NavigationDestination(
          //  icon: Icon(Icons.settings_outlined), label: 'Setting'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
