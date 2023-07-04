import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/login_screen/login_page.dart';

class StartScreen extends StatefulWidget {
  static const String routeName = '/start';
  const StartScreen({
    super.key,
  });

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF4B3A),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 49, top: 10),
                    child: Container(
                      height: 73,
                      width: 73,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(150),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 49, top: 20),
                    child: Text(
                      'Food for Everyone',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 410,
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Stack(fit: StackFit.passthrough, children: [
                      Positioned(
                        right: 1,
                        top: 50,
                        child: Container(
                          height: 400,
                          width: 262,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/start_image_2.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1,
                        top: 5,
                        child: Container(
                          height: 400,
                          width: 262,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/start_image_1.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 200,
                              padding: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffFF460A),
                                    Color.fromARGB(0, 104, 104, 104),
                                    Color(0xffFF460A),
                                    Color(0xffFF460A),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [0, 0, 4.0, 10],
                                ),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(314, 70),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 17, color: Color(0xffFF460A)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
