import 'package:aflamak_app/constants.dart';
import 'package:aflamak_app/pages/account_page.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.top});
 final double top;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: top, bottom: 20),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image(
          image: AssetImage('assets/images/logo.png'),
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitHeight,
          height: 30,
        ),
        Text(
          'AFlamak',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 30,
            fontWeight: FontWeight.w600,
            fontFamily: 'Arbutus Slab',
          ),
        ),
        Spacer(
          flex: 1,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AccountPage.id);
          },
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/person2.jpg'),
            ),
          ),
        )
      ]),
    );
  }
}
