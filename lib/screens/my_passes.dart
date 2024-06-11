import 'package:flutter/material.dart';
import 'package:guestlist/models/my_parties.dart';
import 'package:guestlist/screens/my_pass_view.dart';

class MyPasses extends StatelessWidget {
  const MyPasses({super.key});

  @override
  Widget build(BuildContext context) {
    final mypasses = MyParties.listOfParties();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(null),
        title: const Text(
          'My Passes',
          style: TextStyle(
              letterSpacing: -1,
              fontSize: 30,
              fontFamily: 'Spotify',
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),

              //tiles
              for (MyParties item in mypasses)
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return MyPassView(
                        name: item.name,
                        imgPath: item.imgPath,
                        time: item.time,
                        date: item.date,
                        venue: item.venue,
                        genre: item.genre,
                        passCount: item.passCount,
                        totalAmt: item.totalAmt,
                        subVenue: item.subVenue);
                  })),
                  child: passTiles(item.imgPath!, item.name!, item.time!,
                      item.date!, item.venue!),
                )
            ],
          ),
        ),
      ),
    );
  }

  Column passTiles(
      String path, String name, String time, String date, String venue) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade900,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  child: Image.asset(
                    path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      const Spacer(),
                      //title
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          name,
                          style: const TextStyle(
                              letterSpacing: -1,
                              fontSize: 26,
                              fontFamily: 'Spotify',
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      //time and date
                      Row(
                        children: [
                          const SizedBox(
                            child: Icon(
                              Icons.access_time_rounded,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 8),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '$time  •  $date',
                                style: const TextStyle(
                                    letterSpacing: -0.3,
                                    fontSize: 15,
                                    fontFamily: 'Spotify',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      //venue
                      Row(
                        children: [
                          const SizedBox(
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 8),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                venue,
                                style: const TextStyle(
                                    letterSpacing: -0.3,
                                    fontSize: 15,
                                    fontFamily: 'Spotify',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
