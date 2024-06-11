import 'package:flutter/material.dart';
import 'package:guestlist/colors.dart';
import 'package:guestlist/screens/booking_screen.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  DetailsPage(
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Colors.black,
        floatingActionButton: Container(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  margin:
                      const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                  child: FloatingActionButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BookingPage(
                          name: name,
                          imgPath: imgPath,
                          time: time,
                          date: date,
                          venue: venue,
                          genre: genre,
                          subVenue: subVenue,
                          description: description,
                          venuePath: venuePath,
                          mainArtist: mainArtist,
                          supportingArtist1: supportingArtist1,
                          supportingArtist2: supportingArtist2,
                          supportingArtist3: supportingArtist3,
                          mainArtistPath: mainArtistPath,
                          supportingArtist1Path: supportingArtist1Path,
                          supportingArtist2Path: supportingArtist2Path,
                          supportingArtist3Path: supportingArtist3Path,
                          price: price);
                    })),
                    backgroundColor: btnBlue,
                    child: const Text(
                      'Book Now',
                      style: TextStyle(
                          fontFamily: 'Spotify',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
          backgroundColor: Colors.black,
          title: Text(
            name!,
            style: const TextStyle(
                letterSpacing: -1,
                fontSize: 30,
                fontFamily: 'Spotify',
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
        body: ShaderMask(
          shaderCallback: (Rect rect) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.transparent,
                Colors.transparent,
                Colors.black
              ],
              stops: [
                0,
                0.15,
                0.8,
                0.9
              ], // 10% purple, 80% transparent, 10% purple
            ).createShader(rect);
          },
          blendMode: BlendMode.dstOut,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //asset image
                  Container(
                    height: 420,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath!), fit: BoxFit.cover)),
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              stops: [0.7, 10],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.black])),
                    ),
                  ),

                  //date and time
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        const Icon(
                          Icons.calendar_month,
                          size: 36,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          date!,
                          style: const TextStyle(
                              letterSpacing: -1,
                              fontSize: 20,
                              fontFamily: 'Spotify',
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const SizedBox(
                          child: Icon(
                            Icons.access_time_rounded,
                            color: Colors.white,
                            size: 36,
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
                                  fontSize: 20,
                                  fontFamily: 'Spotify',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  //genre
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const Text(
                          'Genre : ',
                          style: TextStyle(
                              fontFamily: 'Spotify',
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          genre!,
                          style: TextStyle(
                            fontFamily: 'Spotify',
                            fontSize: 19,
                            color: Colors.grey[400],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //Price
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const Text(
                          'Price per pass : ',
                          style: TextStyle(
                              fontFamily: 'Spotify',
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '₹$price',
                          style: TextStyle(
                            fontFamily: 'Spotify',
                            fontSize: 19,
                            color: Colors.grey[400],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //About
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'About',
                      style: TextStyle(
                          fontFamily: 'Spotify',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      description!,
                      style: TextStyle(
                          letterSpacing: -1,
                          fontSize: 18,
                          fontFamily: 'Spotify',
                          color: Colors.grey[400]),
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),

                  //main artist
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: const Row(
                      children: [
                        Text(
                          'Performing Artists ',
                          style: TextStyle(
                              fontFamily: 'Spotify',
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  //Main Artist pic
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 12),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          artistPic(mainArtistPath!, mainArtist!),
                          artistPic(supportingArtist1Path, supportingArtist1),
                          artistPic(supportingArtist2Path, supportingArtist2),
                          artistPic(supportingArtist3Path, supportingArtist3),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 36,
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: const Row(
                      children: [
                        Text(
                          'Venue ',
                          style: TextStyle(
                              fontFamily: 'Spotify',
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  //Venue tab
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                                image: AssetImage(venuePath!),
                                fit: BoxFit.cover)),
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      stops: [0.5, 1],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black
                                      ])),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 180,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            venue!,
                                            style: const TextStyle(
                                              fontFamily: 'Spotify',
                                              fontSize: 19,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        color: Colors.black,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              Expanded(
                                  child: SizedBox(
                                width: 320,
                                child: Text(
                                  subVenue!,
                                  style: const TextStyle(
                                    fontFamily: 'Spotify',
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 112,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Container artistPic(String? path, String? name) {
    if (path != null && name != null) {
      return Container(
        width: 132,
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            SizedBox(
                height: 110,
                width: 110,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(110),
                    child: Image.asset(
                      path,
                      fit: BoxFit.cover,
                    ))),
            const SizedBox(
              height: 4,
            ),
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Spotify',
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
