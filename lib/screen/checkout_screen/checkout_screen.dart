import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_ui_flutter_tora_2/components/box_componets.dart';
import 'package:study_ui_flutter_tora_2/components/button_componets.dart';
import 'package:study_ui_flutter_tora_2/header/header.dart';
import 'package:study_ui_flutter_tora_2/router/routerlinks.dart';

import '../../components/text_componets.dart';
import '../../models/payment_model.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  CheckoutScreenState createState() => CheckoutScreenState();
}

class CheckoutScreenState extends State<CheckoutScreen> {
  int selectedCard = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'Checkout'),
      backgroundColor: const Color(0xffF5F5F8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.titleCard("Payment Method"),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: dataListCheckout.asMap().entries.map(
                          (item) {
                            final index = item.key;
                            final items = item.value;
                            final isLastItem = index == dataList.length - 1;
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Radio<int>(
                                      value: index + 1,
                                      groupValue: selectedCard,
                                      onChanged: (value) {
                                        setState(
                                          () {
                                            selectedCard = value!;
                                          },
                                        );
                                      },
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: items.color,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: SvgPicture.asset(
                                                  items.imageAsset,
                                                ),
                                              ),
                                            ),
                                            BoxSize.sizedBoxW10(),
                                            CustomText.titleCard(items.title),
                                            BoxSize.sizedBoxH20(),
                                          ],
                                        ),
                                        BoxSize.sizedBoxH8(),
                                        if (!isLastItem)
                                          Container(
                                            alignment: Alignment.center,
                                            width: 200,
                                            height: 1,
                                            color:
                                                Colors.black.withOpacity(0.3),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                                BoxSize.sizedBoxH10(),
                              ],
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BoxSize.sizedBoxWH(50),
           CustomButton(routerLink: RouterLinks.notUpdateProfile),
        ],
      ),
    );
  }
}
