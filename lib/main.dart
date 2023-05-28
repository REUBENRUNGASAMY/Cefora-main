import 'package:app/screens/popular.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await Firebase.initializeApp();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PopularList(),
      ),
    );
  }
}

//add to db
Future addTrip() async {
  final tripdoc = FirebaseFirestore.instance.collection('trip').doc();

  final json = {
    'Date': "24 Jan - 45 Mar",
    'Name': "Nerdy Gazon",
    'Price': '0.00',
    'img':
        "https://scontent.fmru4-1.fna.fbcdn.net/v/t39.30808-6/275543949_681828846495608_1468378259736686861_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_ohc=_V3SNO74MbUAX9Uoevt&_nc_ht=scontent.fmru4-1.fna&oh=00_AfD8BOQnpb4Wul2uY6mY8MbOe8xnohKKGWgR6VKegkLYLw&oe=646EAD99"
  };

  await tripdoc.set(json);
}
