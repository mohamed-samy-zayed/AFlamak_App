import 'package:aflamak_app/widgets/GridView_250.dart';
import 'package:aflamak_app/widgets/custom_textField_widget.dart';
import 'package:flutter/material.dart';

class MovieTab extends StatelessWidget {
  const MovieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: 
      CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomTextWidget(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20, bottom: 10, top: 10),
              child: Text(
                'Top Rated Movies ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          GridViewTop250(),
        ],
      ),
    )
          ;
  }
}