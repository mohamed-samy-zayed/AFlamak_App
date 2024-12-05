import 'package:aflamak_app/constants.dart';
import 'package:flutter/material.dart';

class ListtileAccount extends StatelessWidget {
  const ListtileAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.transparent,
        child: ListTile(
          hoverColor:  kPrimaryColor.withOpacity(.3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onTap: () {},
          title: Text('User Name'),
          leading: Icon(Icons.person),
          trailing: Icon(
            Icons.keyboard_arrow_right_rounded,
            size: 24,
          ),
        ),
      ),
    );
  }
}
