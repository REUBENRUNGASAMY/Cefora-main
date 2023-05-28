import 'package:flutter/material.dart';

class SkeletonTripList extends StatelessWidget {
  const SkeletonTripList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 20,
      ),
      padding: const EdgeInsets.only(
        left: 15,
        top: 15,
        bottom: 15,
      ),
      decoration:  BoxDecoration(
        color: const Color(0xff26292B),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.45),
            blurRadius: 4,
            offset: const Offset(0, 4), 
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            width: 80,
            decoration: BoxDecoration(
              color: const Color(0xff2E3239).withOpacity(1),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 10,
                right: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                          color: const Color(0xff2E3239).withOpacity(1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xff2E3239)
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            margin: const EdgeInsets.only(
                                top: 10, left: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xff2E3239)
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xff2E3239).withOpacity(1),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}