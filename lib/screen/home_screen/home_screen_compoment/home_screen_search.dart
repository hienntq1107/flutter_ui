import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenSearch extends StatelessWidget {
  const HomeScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5, top: 5, bottom: 18),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Delicious \nfood for you',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SF Pro Rounded',
                  color: Colors.black,
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                fillColor: const Color(0xFFEFEEEE),
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
                prefixIcon: SvgPicture.asset(
                  'assets/images/svg/search.svg',
                ),
                hintText: 'Search',hintStyle: const TextStyle(
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ],
      ),
    );
  }
}
