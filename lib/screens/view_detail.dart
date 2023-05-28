import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

class Loaddetails extends StatefulWidget {
  final String id;
  const Loaddetails({Key? key, required this.id}) : super(key: key);

  @override
  State<Loaddetails> createState() => LoaddetailsState();
}

class LoaddetailsState extends State<Loaddetails> {
  bool isSelected = false;
  int selectedRadio = 2;
  int selectradio2 = 2;


  void setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  void setselectradio2(int val) {
    setState(() {
      selectradio2 = val;
    });
  }

  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    setState(() {
      if (count>0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: Hero(
                  tag: widget.id,
                  child: Container(
                    width: double.maxFinite,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://mauritiusattractions.com/slir/w854/content/images/places-of-interest/pereybere/pereybere%20(1).jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 10,
                child: Container(
                  width: 40,
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff2E3239),
                  ),
                  child:  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    color: Colors.white,
                    iconSize: 25,
                  ),
                ),
              ),
              
              
              Positioned(
                top: 270,
                left: 0,
                right: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1500,
                  decoration: const BoxDecoration(
                    color: Color(0xff26292B),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 230,
                right: 0,
                left: 0,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff2E3239),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 320,
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 300,
                  child: const Text(
                    'Crystal Lake Iceland',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffCDE4F5),
                      height: 1.3,
                      wordSpacing: 2.5,
                      letterSpacing: 1.4,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 445,
                left: 0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Color(0xff8B8000),
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '4.2(312)',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 60),
                    Container(
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: 170 * (3.14159265359 / 180),
                            child: const Icon(
                              Icons.map,
                              color: Color(0xffA2B2EE),
                              size: 25,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Visit',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 500,
                left: 16,
                child: Container(
                  child: Column(
                    children: const [
                      Text(
                        'Trip Plan',
                        style: TextStyle(
                          color: Color(0xffCDE4F5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 530,
                left: 16,
                right: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Unleash your wanderlust in Iceland, Where natures grandeur awaits at every corner. Marvel at majestic waterfalls and ancient glaciers, immersing in a vibrant culture.',
                        style: TextStyle(
                          color: Color(0xff5A5A5A),
                          height: 1.6,
                          fontSize: 14,
                          wordSpacing: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 659,
                left: 16,
                child: Padding(
                  padding: const EdgeInsets.only(right: 38.0),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Customize your package:',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Radio<int>(
                                value: 1,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val!);
                                },
                                activeColor: const Color(0xffA2B2EE),
                              ),
                              const Text(
                                'Include Transport',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              Radio<int>(
                                value: 2,
                                groupValue: selectedRadio,
                                onChanged: (val) {
                                  setSelectedRadio(val!);
                                },
                                activeColor: const Color(0xffA2B2EE),
                              ),
                              const Text(
                                'Do not include transport',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Radio<int>(
                                value: 1,
                                groupValue: selectradio2,
                                onChanged: (val) {
                                  setselectradio2(val!);
                                },
                                activeColor: const Color(0xffA2B2EE),
                              ),
                              const SizedBox(width: 0),
                              const Text(
                                'Include Food',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Radio<int>(
                                value: 2,
                                groupValue: selectradio2,
                                onChanged: (val) {
                                  setselectradio2(val!);
                                },
                                activeColor: const Color(0xffA2B2EE),
                              ),
                              const SizedBox(width: 0),
                              const Text(
                                'Do not include food',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Row(
                                children: const [
                                  Text(
                                    'Number of Passengers:',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(width: 43),
                                  GestureDetector(
                                    onTap: decrementCount,
                                    child: Transform.rotate(
                                      angle: 3.14159,
                                      child: const Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30),
                              Text(
                                count.toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: incrementCount,
                                    child: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
              Positioned(
                top: 950,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Image.network(
                            'https://viatravelers.com/wp-content/uploads/2022/05/Northern-Lights.jpg.webp',
                            height: 120,
                            width: 200,
                          )),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network(
                              'https://viatravelers.com/wp-content/uploads/2022/05/Northern-Lights.jpg.webp',
                              height: 56,
                            ),
                          ),
                          Image.network(
                            'https://viatravelers.com/wp-content/uploads/2022/05/Northern-Lights.jpg.webp',
                            height: 56,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 1100,
                left: MediaQuery.of(context).size.width / 2 - 150,
                child: Center(
                  child: Container(
                    width: 300,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff2E3239),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Button pressed action
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        primary: Colors.transparent,
                        elevation: 0,
                      ),
                      child: const Text(
                        'See all photos',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffCDE4F5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 1300,
                right: 15,
                left: 10,
                child: Center(
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color(0xff2E3239),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
