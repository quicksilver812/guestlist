import 'package:flutter/material.dart';
import 'package:guestlist/colors.dart';
import 'package:guestlist/screens/main_screen.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/login/sunburn.webp'),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.1, 0.4, 0.8],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent, Colors.black])),
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    height: 60,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const SizedBox(
                            width: 32,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'Sign in',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.3,
                              color: Colors.white,
                              fontSize: 32,
                              fontFamily: 'Spotify'),
                        ),
                        const Spacer(),
                        Container(
                          width: 32,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),

                  //Phone number text field
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 64,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(229, 31, 31, 31),
                        borderRadius: BorderRadius.circular(100)),
                    child: const Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 66,
                          child: Icon(
                            Icons.mail,
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
                                hintText: 'Email ID',
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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 64,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(229, 31, 31, 31),
                        borderRadius: BorderRadius.circular(100)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.lock,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: SizedBox(
                          height: 50,
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
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
                  Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: btnBlue),
                            onPressed: () =>
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const MainPage();
                                  },
                                )),
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                  fontFamily: 'Spotify',
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                      )),
                      const SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 2,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Or Sign in with',
                          style: TextStyle(
                              fontFamily: 'Spotify',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Container(height: 2, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('Facebook Selected');
                          },
                          child: Container(
                              alignment: Alignment.center,
                              height: 60,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Row(
                                children: [
                                  const Spacer(),
                                  Container(
                                    height: 60,
                                    width: 52,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/login/facebook.png',
                                          height: 32,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    'Facebook',
                                    style: TextStyle(
                                        fontFamily: 'Spotify',
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Spacer(),
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('Google Selected');
                          },
                          child: Container(
                              alignment: Alignment.center,
                              height: 60,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Row(
                                children: [
                                  const Spacer(),
                                  Container(
                                    height: 60,
                                    width: 52,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/login/google.png',
                                          height: 28,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    'Google',
                                    style: TextStyle(
                                        fontFamily: 'Spotify',
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Spacer(),
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: const Text(
                      'By sign in or sign up, you agree to our Terms of Service and Privacy Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Spotify',
                          fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
