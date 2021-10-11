import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 30),
        height: 50,
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Image.asset(
                'assets/images/Instagram_logo.png',
                alignment: Alignment.centerLeft,
                // width: 30,
                // height: 30,
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                'assets/images/add_icon.png',
                width: 30,
                height: 30,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              flex: 1,
              child: Image.asset(
                'assets/images/messenger_logo.png',
                width: 30,
                height: 30,
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
