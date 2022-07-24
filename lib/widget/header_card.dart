import 'package:flutter/material.dart';
import 'package:rda_hitnes/themes.dart';

class HeaderCard extends StatelessWidget {
  final String title;
  const HeaderCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 100,
        ),
        child: Container(
          height: 125,
          width: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: greyColor.withOpacity(0.4),
                blurRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
