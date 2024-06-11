import 'package:flutter/material.dart';
import 'package:guestlist/colors.dart';
import 'package:guestlist/screens/sign_in_screen.dart';
import 'package:guestlist/screens/sign_up_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
            children: [
              const SizedBox(
                height: 72,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Image.asset('assets/logo.png',height: 38,),
                        GradientText(
                          'guestlist.',
                          style: const TextStyle(
                              letterSpacing: -0.3,
                              color: Colors.white,
                              fontSize: 52,
                              fontFamily: 'Spotify'),
                          colors: const [
                            Color.fromARGB(255, 117, 29, 132),
                            btnBlue
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    //languageButton()
                  ],
                ),
              ),
              const Spacer(),
              const Text(
                'Book party passes.',
                style: TextStyle(
                    letterSpacing: -1,
                    fontSize: 42,
                    fontFamily: 'Spotify',
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Text(
                'At your fingertips.',
                style: TextStyle(
                    letterSpacing: -1,
                    fontSize: 42,
                    fontFamily: 'Spotify',
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 36,
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
                        style:
                            ElevatedButton.styleFrom(backgroundColor: btnBlue),
                        onPressed: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignInPage();
                            })),
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
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpPage();
                      })),
                      child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(100)),
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                                fontFamily: 'Spotify',
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
                      color: Colors.grey, fontFamily: 'Spotify', fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 42,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container languageButton() {
    return Container(
      height: 50,
      width: 132,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 1, color: Colors.white)),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.language_rounded,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.centerLeft,
                height: 50,
                child: const Text(
                  'English',
                  style: TextStyle(
                      fontFamily: 'Spotify', fontSize: 16, color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
