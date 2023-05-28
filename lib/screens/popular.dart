import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app/Widget/trip_list.dart';
import 'package:app/Widget/skeleton_trip_list.dart';

class PopularList extends StatefulWidget {
  const PopularList({super.key});

  @override
  State<PopularList> createState() => _PopularListState();
}

class _PopularListState extends State<PopularList> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff26292B),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 30,
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff5F7ADB),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 28,
                        splashRadius: 50,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25),
                      child: const Text(
                        'Popular Trip List',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //items List
              StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream:
                    FirebaseFirestore.instance.collection('trip').snapshots(),
                builder: (_, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error = ${snapshot.error}');
                  }
                  if (snapshot.hasData) {
                    final trips = snapshot.data!.docs;
                    
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (builder, index) {
                        
                        final trip = trips[index];
                        return TripItem(
                          id: trip.id,
                          name: trip['Name'].toString(),
                          date: trip['Date'].toString(),
                          price: trip['Price'].toString(),
                          img: trip['img'].toString(),
                        );
                      },
                      itemCount: trips.length,
                    );
                  }

                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (builder, index) {
                        return const SkeletonTripList();
                      },
                      itemCount: 5);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
