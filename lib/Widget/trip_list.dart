import 'package:app/Widget/skeleton_trip_list.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:app/screens/view_detail.dart';
import 'package:page_transition/page_transition.dart';

class TripItem extends StatelessWidget {
  final String name, date, price, img, id;
  const TripItem({
    super.key,
    required this.id,
    required this.name,
    required this.date,
    required this.price,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img,
      imageBuilder: (context, imageProvioder) {
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: const Color(0xff2E3239),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.45),
                blurRadius: 4,
                offset: const Offset(0, 4), // Shadow position
              ),
            ],
          ),
          height: 140,
          child: InkWell(
            child: Row(
              children: [
                Hero(
                  tag: id,
                  child: Container(
                    width: 80,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: imageProvioder,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 160,
                            child: Text(
                              name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: const Color(0xffA2B2EE),
                                ),
                                padding: const EdgeInsets.all(4),
                                child: const Icon(Icons.calendar_month_outlined,
                                    size: 20),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                date,
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 129, 129, 129),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff5F7ADB),
                        ),
                        child: Text(
                          'Rs\n$price',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xff2E3239),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            onTap: () {
              // ignore: avoid_print
              Navigator.of(context).push(
                PageTransition(
                  child: Loaddetails(id: id,),
                  type: PageTransitionType.bottomToTop,
                  )
              );
            },
          ),
        );
      },
      placeholder: (context, url) => const SkeletonTripList(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
