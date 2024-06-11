import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 48,
            ),
            //user dp, name, number, emailid, edit
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  //user dp
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    height: 110,
                    width: 110,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/profile/dp.jpeg',
                          fit: BoxFit.cover,
                        )),
                  ),
                  //Name number and mailid
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      alignment: Alignment.centerLeft,
                      height: 110,
                      child: Column(
                        children: [
                          //name
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Walter White',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.3,
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontFamily: 'Spotify'),
                            ),
                          ),
                          const Spacer(),
                          //number
                          Row(
                            children: [
                              const Icon(Icons.phone,color: Colors.white,),
                              Container(
                                margin: const EdgeInsets.only(left: 12),
                                child: const Text(
                                  '(704) 555-0127',
                                  style: TextStyle(
                                    letterSpacing: -0.3,
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Spotify'),
                                  ),
                              )
                            ],
                          ),
                          const SizedBox(height: 4,),
                          //email
                          Row(
                            children: [
                              const Icon(Icons.mail,color: Colors.white,),
                              Container(
                                margin: const EdgeInsets.only(left: 12),
                                child: const Text(
                                  'w.white@example.com',
                                  style: TextStyle(
                                    letterSpacing: -0.3,
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Spotify'),
                                  ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //edit option
                  Container(
                    alignment: Alignment.topCenter,
                    height: 110,
                    width: 50,
                    child: const Column(
                      children: [
                        SizedBox(height: 5,),
                        Icon(Icons.edit, size: 32,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 72,),

            //my passes
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              child: Row(
                children: [
                  //icon of purpose
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.local_movies_rounded, size: 32,color: Colors.white,)
                      ],
                    ),
                  ),
                  //text
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      alignment: Alignment.centerLeft,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'My passes',
                            style: TextStyle(
                              fontFamily: 'Spotify',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white
                            ),)
                        ],
                      ),
                    ),
                  ),
                  //forward icon
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward_ios_rounded, size: 32,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: Colors.grey.shade800,
            ),
            const SizedBox(height: 12,),
            
            //payment history
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              child: Row(
                children: [
                  //icon of purpose
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.payment, size: 32,color: Colors.white,)
                      ],
                    ),
                  ),
                  //text
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      alignment: Alignment.centerLeft,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Payment history',
                            style: TextStyle(
                              fontFamily: 'Spotify',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white
                            ),)
                        ],
                      ),
                    ),
                  ),
                  //forward icon
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward_ios_rounded, size: 32,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: Colors.grey.shade800,
            ),
            const SizedBox(height: 12,),
            
            //change language
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              child: Row(
                children: [
                  //icon of purpose
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.language_outlined, size: 32,color: Colors.white,)
                      ],
                    ),
                  ),
                  //text
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      alignment: Alignment.centerLeft,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Change language',
                            style: TextStyle(
                              fontFamily: 'Spotify',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white
                            ),)
                        ],
                      ),
                    ),
                  ),
                  //forward icon
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward_ios_rounded, size: 32,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: Colors.grey.shade800,
            ),
            const SizedBox(height: 12,),

            //change password
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              child: Row(
                children: [
                  //icon of purpose
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline_rounded, size: 32,color: Colors.white,)
                      ],
                    ),
                  ),
                  //text
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      alignment: Alignment.centerLeft,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Change password',
                            style: TextStyle(
                              fontFamily: 'Spotify',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white
                            ),)
                        ],
                      ),
                    ),
                  ),
                  //forward icon
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward_ios_rounded, size: 32,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: Colors.grey.shade800,
            ),
            const SizedBox(height: 12,),

            //biometric unlock
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              child: Row(
                children: [
                  //icon of purpose
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.fingerprint, size: 32,color: Colors.white,)
                      ],
                    ),
                  ),
                  //text
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      alignment: Alignment.centerLeft,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Biometric unlock',
                            style: TextStyle(
                              fontFamily: 'Spotify',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white
                            ),)
                        ],
                      ),
                    ),
                  ),
                  //forward icon
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward_ios_rounded, size: 32,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12,),
          ],
        ),
      ),
    );
  }
}
