import 'package:flutter/material.dart';
import 'package:guestlist/colors.dart';
import 'package:guestlist/models/news.dart';
import 'package:guestlist/models/parties.dart';
import 'package:guestlist/screens/party_details_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final allParties = AllParties.listOfParties();
  final newsDeets = newsApp.newsData();

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (Rect rect) {
          return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.black
            ],
            stops: [
              0.01,
              0.2,
              0.92,
              1
            ], // 10% purple, 80% transparent, 10% purple
          ).createShader(rect);
        },
        blendMode: BlendMode.dstOut,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //welcome messsage and notification
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 60,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'Hi, Allen 👋',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Spotify',
                                    color: Colors.white,
                                    fontSize: 17),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'Welcome Back',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Spotify',
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      )),
                      const SizedBox(
                        height: 60,
                        width: 60,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                //search bar
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 72, 72, 72),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.search_rounded,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 50,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  fontFamily: 'Spotify',
                                  fontSize: 17,
                                  color: Colors.grey)),
                          cursorColor: Colors.white,
                        ),
                      ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                //upcoming parties
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      //upcoming parties title
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Upcoming Parties',
                            style: TextStyle(
                                letterSpacing: -0.5,
                                fontFamily: 'Spotify',
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),

                      //see all button
                      seeAllButton(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                //party tiles
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 12),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (AllParties item in allParties)
                            GestureDetector(
                                onTap: () => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return DetailsPage(
                                        name: item.name!,
                                        imgPath: item.imgPath!,
                                        time: item.time!,
                                        date: item.date!,
                                        venue: item.venue!,
                                        venuePath: item.venuePath!,
                                        genre: item.genre!,
                                        subVenue: item.subVenue!,
                                        description: item.description!,
                                        mainArtist: item.mainArtist!,
                                        supportingArtist1:
                                            item.supportingArtist1,
                                        supportingArtist2:
                                            item.supportingArtist2,
                                        supportingArtist3:
                                            item.supportingArtist3,
                                        mainArtistPath: item.mainArtistPath!,
                                        supportingArtist1Path:
                                            item.supportingArtist1Path,
                                        supportingArtist2Path:
                                            item.supportingArtist2Path,
                                        supportingArtist3Path:
                                            item.supportingArtist3Path,
                                        price: item.price,
                                      );
                                    })),
                                child: upcomingTile(
                                    item.imgPath!, item.name!, item.genre!))
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 24,
                ),
                //promo and discounts
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      //party Promos title
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Party Promos',
                            style: TextStyle(
                                letterSpacing: -0.5,
                                fontFamily: 'Spotify',
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),

                      //see all button
                      seeAllButton()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                //promo tile
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/promos/promo.png'),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                //News and see all button
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      //party news title
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Party News',
                            style: TextStyle(
                                letterSpacing: -0.5,
                                fontFamily: 'Spotify',
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),

                      //see all button
                      seeAllButton()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                //News tiles
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 12),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (newsApp item in newsDeets)
                            newsTile(item.path!, item.message!)
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 24,
                )
              ],
            ),
          ),
        ));
  }

  Container seeAllButton() {
    return Container(
      alignment: Alignment.center,
      height: 31,
      child: Row(
        children: [
          GradientText(
            'See all',
            colors: const [Color.fromARGB(255, 176, 100, 189), btnBlue],
            style: const TextStyle(
                fontSize: 16, fontFamily: 'Spotify', color: btnBlue),
          ),
          const SizedBox(
            width: 4,
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 17,
            color: btnBlue,
          )
        ],
      ),
    );
  }

  Row upcomingTile(String path, String name, String org) {
    return Row(
      children: [
        SizedBox(
          width: 170,
          height: 260,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 170,
                width: 170,
                child: ClipRRect(
                    child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                )),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                name,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: 'Spotify',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                org,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontFamily: 'Spotify',
                  color: Colors.grey,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }

  Row newsTile(String path, String message) {
    return Row(
      children: [
        SizedBox(
          width: 260,
          height: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(127, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(8)),
                height: 180,
                width: 260,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      path,
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                message,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: 'Spotify',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 12,
        ),
      ],
    );
  }
}

//holi colors kinda splatter for bg