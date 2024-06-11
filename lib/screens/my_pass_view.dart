import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyPassView extends StatelessWidget {
  MyPassView(
      {super.key,
      required this.name,
      required this.imgPath,
      required this.time,
      required this.date,
      required this.venue,
      required this.genre,
      required this.passCount,
      required this.totalAmt,
      required this.subVenue});

  String? name;
  String? imgPath;
  String? time;
  String? date;
  String? venue;
  String? subVenue;
  String? genre;
  String? totalAmt;
  String? passCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 28,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'My Pass',
          style: TextStyle(
              letterSpacing: -1,
              fontSize: 30,
              fontFamily: 'Spotify',
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 24,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              color: Colors.white,
            ),
          ),
          //image, name, timedate, genre
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 150,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      imgPath!,
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
                            name!,
                            style: const TextStyle(
                                letterSpacing: -1,
                                fontSize: 26,
                                fontFamily: 'Spotify',
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        //time
                        Row(
                          children: [
                            const SizedBox(
                              child: Icon(
                                Icons.access_time_rounded,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  time!,
                                  style: const TextStyle(
                                      letterSpacing: -0.3,
                                      fontSize: 15,
                                      fontFamily: 'Spotify',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        //genre
                        Row(
                          children: [
                            const SizedBox(
                              child: Icon(
                                Icons.music_note_rounded,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  genre!,
                                  style: const TextStyle(
                                      letterSpacing: -0.3,
                                      fontSize: 15,
                                      fontFamily: 'Spotify',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //date
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 80,
            color: Colors.white,
            child: Row(
              children: [
                const Spacer(),
                const Icon(
                  Icons.calendar_month,
                  size: 48,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  date!,
                  style: const TextStyle(
                      letterSpacing: -1,
                      fontSize: 24,
                      fontFamily: 'Spotify',
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const Spacer(),
              ],
            ),
          ),
          //divider
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 10,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    height: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          //cash
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 40,
            color: Colors.white,
            child: Row(
              children: [
                const SizedBox(
                  width: 24,
                ),
                const Icon(
                  Icons.payment_rounded,
                  size: 32,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  '₹ $totalAmt',
                  style: const TextStyle(
                      letterSpacing: -1,
                      fontSize: 22,
                      fontFamily: 'Spotify',
                      color: Colors.black),
                )
              ],
            ),
          ),
          //count
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 40,
            color: Colors.white,
            child: Row(
              children: [
                const SizedBox(
                  width: 24,
                ),
                const Icon(
                  Icons.local_movies_rounded,
                  size: 32,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Passes : $passCount',
                  style: const TextStyle(
                      letterSpacing: -1,
                      fontSize: 22,
                      fontFamily: 'Spotify',
                      color: Colors.black),
                )
              ],
            ),
          ),
          //main address
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 40,
            color: Colors.white,
            child: Row(
              children: [
                const SizedBox(
                  width: 24,
                ),
                const Icon(
                  Icons.location_on_outlined,
                  size: 32,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  venue!,
                  style: const TextStyle(
                      letterSpacing: -1,
                      fontSize: 22,
                      fontFamily: 'Spotify',
                      color: Colors.black),
                )
              ],
            ),
          ),
          //sub address
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            color: Colors.white,
            child: Row(
              children: [
                const SizedBox(width: 74),
                SizedBox(
                  width: 300,
                  child: Text(
                    subVenue!,
                    style: const TextStyle(
                        letterSpacing: -1,
                        fontSize: 15,
                        fontFamily: 'Spotify',
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 10,
            color: Colors.white,
          ),
          //instructions
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            color: Colors.white,
            child: const Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Icon(
                  Icons.fact_check_outlined,
                  size: 32,
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Show this QR code while entering to \nrecieve your pass',
                  style: TextStyle(
                      letterSpacing: -1,
                      fontSize: 16,
                      fontFamily: 'Spotify',
                      color: Colors.black),
                )
              ],
            ),
          ),
          //ticket divider
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 50,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 25,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100))),
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 25,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(100))),
                )
              ],
            ),
          ),
          //QR Code
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.only(bottom: 24),
            height: 180,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/demo.webp'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
