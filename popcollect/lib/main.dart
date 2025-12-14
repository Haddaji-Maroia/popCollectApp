import 'package:dto/dto.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:popcollect2/firebase_options.dart';
import 'package:popcollect2/widgets/product_card.dart';
import 'package:popcollect2/widgets/product_carousel_widget.dart';
import '../widgets/search_bar_widget.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('PopCollect'),
        ),
        body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //carosello
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBarWidget(),
                SizedBox(height: 30),
                Text('New additions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                ProductCarouselWidget(),
                SizedBox(height: 40),

              ],
            ),
          ],
        ),
        ),
        ),



        // BOTTOM NAVIGATION BAR
        bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Home'
              ),
              NavigationDestination(
                  icon: Icon(Icons.book),
                  label: 'Collection'
              ),
              NavigationDestination(
                  icon: Icon(Icons.list_alt),
                  label: 'Wishlist'
              ),
              NavigationDestination(
                  icon: Icon(Icons.person),
                  label: 'Profile'
              ),
        ],
            onDestinationSelected: (int value){
              setState(() {
                selectedIndex = value;
              });
            },
            selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}






