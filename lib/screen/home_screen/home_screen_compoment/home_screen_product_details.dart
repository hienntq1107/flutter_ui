// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:study_ui_flutter_tora_2/models/product_model.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen_compoment/home_screen_product_card.dart';

class ProductDetails extends StatefulWidget {
  final int currentIndex;
  

  const ProductDetails({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  ProductDetailsState createState() => ProductDetailsState();
}

class ProductDetailsState extends State<ProductDetails> {
  late PageController _pageController;
  int initPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: initPage,
      viewportFraction: 0.63,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.85,
      child: PageView.builder(
        itemCount: categories[widget.currentIndex].productList.length,
        itemBuilder: (context, index) => GestureDetector(
          child: ProductCard(
            product: categories[widget.currentIndex].productList[index],
          ),
        ),
        controller: _pageController,
      ),
    );
  }
}