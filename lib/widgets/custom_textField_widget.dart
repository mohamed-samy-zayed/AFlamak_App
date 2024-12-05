import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
          hintText: 'Search',
          hintStyle: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Colors.black,
            size: 30,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
