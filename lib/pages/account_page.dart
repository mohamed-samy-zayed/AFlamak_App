import 'package:aflamak_app/constants.dart';
import 'package:aflamak_app/pages/home_page.dart';
import 'package:aflamak_app/widgets/bottom_navigator.dart';
import 'package:aflamak_app/widgets/listtile_account.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  static String id = 'AccountPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigator(
        index: 4,
      ),
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                HomePage.id,
                (route) => true,
              );
            },
            icon: Icon(Icons.arrow_back_ios_rounded)),
        title: Text('Account', textAlign: TextAlign.left),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/person2.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Positioned(
                    bottom: -10,
                    right: 35,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(8)),
                    )),
                Positioned(
                  bottom: -23,
                  right: 23,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_rounded,
                        size: 20,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Mohamed Samy',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Samyelsayedpgs@gmail.com',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ListtileAccount();
                    }))
          ],
        ),
      ),
    );
  }
}
