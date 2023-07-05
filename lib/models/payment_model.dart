import 'package:flutter/material.dart';

class PaymentItemModel {
  final String imageAsset;
  final String title;
  final Color color;

  PaymentItemModel({
    required this.imageAsset,
    required this.title,
     required this.color,
  });
}

List<PaymentItemModel> dataList = [
  PaymentItemModel(
    imageAsset: 'assets/images/svg/bi_credit-card-2-front-fill.svg',
    title: 'Card',
    color: Colors.orange,
  ),
  PaymentItemModel(
    imageAsset: 'assets/images/svg/dashicons_bank.svg',
    title: 'Bank account',
    color: Colors.pink,
    
  ),
  PaymentItemModel(
    imageAsset: 'assets/images/svg/cib_paypal.svg',
    title: 'Paypal',
    color: Colors.blue,
  ),
];

List<PaymentItemModel> dataListCheckout = [
  PaymentItemModel(
    imageAsset: 'assets/images/svg/bi_credit-card-2-front-fill.svg',
    title: 'Card',
    color: Colors.orange,
  ),
  PaymentItemModel(
    imageAsset: 'assets/images/svg/dashicons_bank.svg',
    title: 'Bank account',
    color: Colors.pink,
    
  ),
];