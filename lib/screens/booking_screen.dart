import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guestlist/colors.dart';
import 'package:guestlist/screens/party_details__only_screen.dart';

// ignore: must_be_immutable
class BookingPage extends StatelessWidget {
  BookingPage(
      {super.key,
      required this.name,
      required this.imgPath,
      required this.time,
      required this.date,
      required this.venue,
      required this.genre,
      required this.subVenue,
      required this.description,
      required this.venuePath,
      required this.mainArtist,
      required this.supportingArtist1,
      required this.supportingArtist2,
      required this.supportingArtist3,
      required this.mainArtistPath,
      required this.supportingArtist1Path,
      required this.supportingArtist2Path,
      required this.supportingArtist3Path,
      required this.price});

  String? name;
  String? imgPath;
  String? time;
  String? date;
  String? venue;
  String? venuePath;
  String? subVenue;
  String? genre;
  String? description;
  String? mainArtist;
  String? supportingArtist1;
  String? supportingArtist2;
  String? supportingArtist3;
  String? mainArtistPath;
  String? supportingArtist1Path;
  String? supportingArtist2Path;
  String? supportingArtist3Path;
  int? price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 28,
            )),
        title: const Text(
          'Booking Options',
          style: TextStyle(
              letterSpacing: -1,
              fontSize: 30,
              fontFamily: 'Spotify',
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: 150,
            color: Colors.black,
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
                                color: Colors.white),
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
                                color: Colors.white,
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
                                      color: Colors.white),
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
                                color: Colors.white,
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
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              child: Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 8),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  date!,
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
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            height: 56,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Number of Passes',
                        style: TextStyle(
                            letterSpacing: -0.3,
                            fontSize: 18,
                            fontFamily: 'Spotify',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 70,
                    color: btnBlue,
                  ),
                  const SizedBox(
                    width: 12,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
