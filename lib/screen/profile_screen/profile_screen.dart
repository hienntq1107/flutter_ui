import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/header/header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  int selectedCard = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'My Profile'),
      backgroundColor: const Color(0xffF5F5F8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Information",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/avatar_image.png',
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 20),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(width: 5),
                                  Text(
                                    "Marvis Ighedosa",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  // Add a subtitle widget
                                  Text(
                                    "dosamarvis@gmail.com",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'No 15 uti street off ovie palace road effurun delta state',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Payment Method",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Radio<int>(
                                value: 1,
                                groupValue: selectedCard,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCard = value!;
                                  });
                                },
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/avatar_image.png',
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Card",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 200,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Radio<int>(
                                value: 2,
                                groupValue: selectedCard,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCard = value!;
                                  });
                                },
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/avatar_image.png',
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Bank account",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 200,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Radio<int>(
                                value: 3,
                                groupValue: selectedCard,
                                onChanged: (value) {
                                  setState(() {
                                    selectedCard = value!;
                                  });
                                },
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/avatar_image.png',
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Paypal",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 200,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffFF460A),
                minimumSize: const Size(314, 70),
              ),
              onPressed: () {},
              child: const Text(
                'Update',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}